---
title: "Chrome/Chromium: Gæstetilstand til/fra (guest mode)"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/chrome_chromium_guest_mode_enforced.sh
parameters:
  - name: "Aktiver"
    type: "boolean"
    default: null
    mandatory: false
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
partners:
  - "Aarhus Kommune"
---

## Beskrivelse
Udviklet og testet i samarbejde med Aarhus kommune.

BEMÆRK: 
- Hvis dette script køres vil startsiden ikke længere indlæses, og i stedet vil en infoside omkring gæstetilstand blive vist.
- Bogmærker sat via script vises ikke længere. Dvs. bogmærkescriptet har ikke længere en effekt.
- Browserudvidelser, selv sat via scripts, er ikke længere aktive. Dvs. browserudvidelses-scriptet har ikke længere en effekt.
Ovenstående begrænsninger er ikke aktive valg fra vores side, men sådan Chrome/Chromium-udviklerne har fastlåst, det skal være.

"Google Chrome enforces guest sessions and prevents profile sign-ins. Guest sign-ins are Google Chrome profiles where windows are in Incognito mode."

ref: https://chromeenterprise.google/policies/#BrowserGuestModeEnforced

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre

Parameter - Aktivér

For at tilføje policy'en sæt hak i afkrydsfeltet.

For at fjerne browserpolitikken, så lad afkrydsningsfeltet stå tomt.