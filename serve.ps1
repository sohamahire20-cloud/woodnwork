$port = 8080
$root = $PSScriptRoot
if (-not $root) { $root = (Get-Location).Path }

$mimeTypes = @{
    '.html' = 'text/html; charset=utf-8'
    '.css'  = 'text/css; charset=utf-8'
    '.js'   = 'application/javascript; charset=utf-8'
    '.svg'  = 'image/svg+xml'
    '.png'  = 'image/png'
    '.jpg'  = 'image/jpeg'
    '.jpeg' = 'image/jpeg'
    '.json' = 'application/json'
}

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")

try {
    $listener.Start()
    Write-Host "=========================================================="
    Write-Host " Wood N Work Digital Showroom Local Server"
    Write-Host " Preview URL: http://localhost:$port/"
    Write-Host " Serving directory: $root"
    Write-Host "=========================================================="

    try { Start-Process "http://localhost:$port/" -ErrorAction SilentlyContinue } catch {}

    while ($listener.IsListening) {
        $context = $listener.GetContext()
        try {
            $request = $context.Request
            $response = $context.Response

            $urlPath = $request.Url.LocalPath.TrimStart('/')
            if (-not $urlPath) { $urlPath = 'index.html' }

            $localPath = Join-Path $root $urlPath
            $localPath = [System.IO.Path]::GetFullPath($localPath)

            if (-not $localPath.StartsWith($root, [System.StringComparison]::OrdinalIgnoreCase) -or -not (Test-Path $localPath -PathType Leaf)) {
                $response.StatusCode = 404
                $buffer = [System.Text.Encoding]::UTF8.GetBytes('<h1>404 Not Found</h1>')
                $response.ContentLength64 = $buffer.Length
                if ($request.HttpMethod -ne 'HEAD') {
                    $response.OutputStream.Write($buffer, 0, $buffer.Length)
                }
                $response.OutputStream.Close()
                continue
            }

            $ext = [System.IO.Path]::GetExtension($localPath).ToLower()
            $mime = $mimeTypes[$ext]
            if (-not $mime) { $mime = 'application/octet-stream' }

            $bytes = [System.IO.File]::ReadAllBytes($localPath)
            $response.ContentType = $mime
            $response.ContentLength64 = $bytes.Length

            if ($request.HttpMethod -ne 'HEAD') {
                $response.OutputStream.Write($bytes, 0, $bytes.Length)
            }
            $response.OutputStream.Close()
        }
        catch {
            # Catch transient client disconnects without killing the server
            try { $context.Response.OutputStream.Close() } catch {}
        }
    }
}
finally {
    if ($listener.IsListening) { $listener.Stop() }
    $listener.Close()
}
