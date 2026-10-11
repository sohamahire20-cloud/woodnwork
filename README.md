# Wood N Work — Digital Showroom & Website Blueprint
**Prepared for Client Review • October 2026**
*Bespoke modular kitchens and custom furniture • Nashik, Maharashtra, India*

---

## 1. Overview & Positioning

This project creates a premium, mobile-first digital showroom for **Wood N Work**, engineered to build trust with considered homeowners and architects in Nashik.

* **Positioning:** Bespoke modular furniture for considered homes, backed by deep material knowledge and a direct manufacturing relationship.
* **Proposed Campaign Concept:** *“Material knowledge. Made personal.”*
* **Primary Business Outcome:** High-intent project consultations that convert into factory-direct commissions.

---

## 2. Six Core Pages Built & Ready for Review

1. **[Home (`index.html`)](file:///c:/Users/User/Desktop/woodnwork/index.html)**:
   - Full 8-part sequence:
     1. Hero with completed-project visual and headline: **“Considered spaces. Crafted around you.”**
     2. Confirmed offer: bespoke modular kitchens and custom furniture in Nashik.
     3. Direct visual links to Kitchens, Custom Furniture, and Projects.
     4. Accurately framed timber-experience and made-to-order story.
     5. Selected real projects, strictly distinguishing completed work from design concepts.
     6. Clear explanation of materials & craftsmanship (BWP ply, natural veneers, super-matt acrylics).
     7. Confirmed 4-step consultation-to-installation customer journey.
     8. Final **Discuss Your Project** call to action.
2. **[Kitchens (`kitchens.html`)](file:///c:/Users/User/Desktop/woodnwork/kitchens.html)**:
   - Explains the four confirmed layouts: The Parallel Galley, The Sculptural Island, The L-Shaped Entertainer, and The U-Shaped Workroom.
   - Material engineering: IS 710 BWP Marine Plywood core carcass standard.
   - Hardware partners (Blum, Hettich) and warranty periods transparently labelled as *Pending Confirmation*.
   - Real kitchen installations with interactive case studies.
   - Homeowner consultation preparation guide (work triangle, appliances, countertops).
3. **[Custom Furniture (`custom-furniture.html`)](file:///c:/Users/User/Desktop/woodnwork/custom-furniture.html)**:
   - Confirmed furniture categories: Floor-to-Ceiling Wardrobes, Floating Credenzas & Media Units, Architectural Timber Panelling, and Custom Dining & Bar Units.
   - Realistic customisation parameters: millimeter dimensions, custom internal organizers, and veneer grain curation.
4. **[Projects (`projects.html`)](file:///c:/Users/User/Desktop/woodnwork/projects.html)**:
   - Clean gallery with category filters: *All Works*, *Kitchens*, *Custom Furniture*, *Concept Studies*.
   - Truth-in-portfolio badges: `[Verified Completed Project]` vs `[Design Concept Study — Staging Asset]`.
   - Interactive Case Study modal covering Client Brief, Wood N Work’s Solution, Specified Materials, and Dimensional Scale.
   - Photography handover protocol and shoot list (Section 12 of blueprint).
5. **[Our Story (`our-story.html`)](file:///c:/Users/User/Desktop/woodnwork/our-story.html)**:
   - Accurately details the 35+ years of family timber & plywood trading background.
   - Clarifies Wood N Work as the modern factory-direct bespoke modular brand in Nashik.
   - The Factory-Direct philosophy: eliminating middleman markups, millimeter precision, and unified craftsmanship accountability.
   - 4-step process and client pre-cutting confirmation checklist.
6. **[Get in Touch (`get-in-touch.html`)](file:///c:/Users/User/Desktop/woodnwork/get-in-touch.html)**:
   - Two-step enquiry form requesting project type, city/locality, room description, name, phone, with optional timing and budget ranges.
   - Staging verification handling: validates inputs, logs locally, provides one-click summary copying, and prepares a WhatsApp draft message.
   - Contact number disclaimer guardrail on `+91 9090 9999 16`.
   - Nashik location notice and consultation FAQ.
7. **[Launch Verification Guide (`verification-guide.html`)](file:///c:/Users/User/Desktop/woodnwork/verification-guide.html)**:
   - Master review dashboard covering the SSL certificate issue on `woodnwork.in`, phone confirmation sign-off, timber heritage phrasing audit, and photography shoot targets.

---

## 3. Strict Brief Adherence & Guardrails

| Requirement from Brief | Implementation in Website |
| :--- | :--- |
| **Domain SSL Error** | Opening `woodnwork.in` returned a certificate-date error. A prominent pre-flight banner and dedicated verification guide section instruct the domain owner on renewing the SSL certificate before live deployment. |
| **Phone Number Guardrail** | Instagram bio lists `+91 9090 9999 16`. Phone links and direct WhatsApp dispatch remain guarded with confirmation notices until the business confirms the number in writing. |
| **35+ Years Timber Heritage** | Accurately described as family timber/plywood knowledge; explicitly avoids claiming the modular furniture brand itself has existed for 35 years. |
| **Truth in Portfolio** | Verified completed projects carry distinct green verification badges; spatial studies are explicitly marked as design staging concepts. |
| **Unconfirmed Specifications** | Hardware partner brand names (Blum/Hettich) and formal warranty years are tagged as *Pending Confirmation* rather than assumed. |
| **Enquiry Submission** | Transparently indicates staging review mode, preventing false promises of automated dispatch until the backend CRM/email endpoint is connected. |

---

## 4. How to Review the Website Locally

You can review the website in two easy ways:

### Option A: Double-Click Any HTML File
Simply open [index.html](file:///c:/Users/User/Desktop/woodnwork/index.html) in any modern browser (Google Chrome, Microsoft Edge, Firefox, Brave, Safari). All styles, SVGs, and interactions run smoothly with zero dependencies.

### Option B: Run the Local PowerShell Web Server
Open PowerShell in this directory and run:
```powershell
powershell -ExecutionPolicy Bypass -File .\serve.ps1
```
This starts a lightweight HTTP server on `http://localhost:8080/` and opens your default browser.
