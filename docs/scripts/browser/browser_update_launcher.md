---
title: "Udskift browser-genvejen i venstremenuen med en valgfri browser"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/browser_update_launcher.sh
parameters:
  - name: "Udskift browseren i venstremenuen med følgende browser (se muligheder i beskrivelse)"
    type: "text_field"
    default: "firefox,google-chrome,microsoft-edge"
    mandatory: false
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Dette script udskifter browseren (der som standard er Firefox) i venstremenuen med en valgfri browser, angivet som første parameter.

Valgmulighederne er:
- firefox
- google-chrome
- microsoft-edge

Dette script er blevet testet og virker på Ubuntu 22.04.