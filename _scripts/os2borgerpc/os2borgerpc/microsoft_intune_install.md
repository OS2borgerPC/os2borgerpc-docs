---
title: "OS2borgerPC - Microsoft Intune: Installer"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/microsoft_intune_install.sh
parameters:
  - name: "Installér?"
    type: "checkbox"
    default: null
    mandatory: false
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Dette script installerer Microsoft Intune, baseret på Microsofts egen vejledning dertil, som findes her:
https://learn.microsoft.com/en-us/mem/intune/user-help/microsoft-intune-app-linux

Bemærk: Dele af dette script er skrevet specifikt til 22.04, så det vil ikke virke i 20.04 i sin nuværende form.