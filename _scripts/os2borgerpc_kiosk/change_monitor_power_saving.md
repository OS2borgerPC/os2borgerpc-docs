---
title: "OS2borgerPC Kiosk - Juster skærmdvale"
category: "OS2BorgerPC Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/change_monitor_power_saving.sh
parameters:
  - name: "Tillad skærmdvale?"
    type: "checkbox"
    default: null
    mandatory: false
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC Kiosk"
---

## Beskrivelse
Scriptet deaktiverer eller genaktiverer skærmdvale ved inaktivitet for en OS2borgerPC Kiosk.

Det kan være særligt brugbart på nogle AIOs/computer-touchskærme, der ikke vækkes ved berøring, eller ved computere der skal vise eksempelvis slideshows, hvor man ikke kan indstille at skærmen aldrig skal slukke i BIOS eller i skærmens indbyggede indstillinger.

Scriptet tager effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Tillad skærmdvale: 
  Sæt hak for at tillade skærmdvale.
  Lad stå tom for ikke at tillade det. (standard)

