---
title: "OS2borgerPC Kiosk - Undgå Pauseskærm / Dvale via musemarkørbevægelse"
category: "OS2BorgerPC Kiosk"
source: os2borgerpc/os2borgerpc_kiosk/suspend-move-mouse-continuously.sh
parameters:
  - name: "Aktivér?"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Interval (eks.: 10)"
    type: "integer"
    default: null
    mandatory: true
compatible_versions: 
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC Kiosk"
---

## Beskrivelse
Hvis man har problemer med at en skærm går i dvale anbefaler vi først at kigge på 
1. Scriptet "Juster skærmdvale" eller 
2. At kigge på hvad der er muligt at indstille direkte på skærmen. 

MEN hvis den derefter stadig går i dvale, kan dette script afprøves.
Scriptet fungerer på den måde, at det bevæger musemarkøren et par pixels efter et interval.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Aktiver: ja/sandt slår det til nej/falsk slår det fra.
2: Interval: Hvor ofte scriptet skal bevæge musen, angivet i minutter. Maks er 59 minutter.

