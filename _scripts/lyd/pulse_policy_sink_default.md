---
title: "Lyd - Sæt standard-lydudgang (sink)"
category: "Lyd"
source: /assets/os2borgerpc-scripts/common/lyd/pulse_policy_sink_default.sh
parameters:
  - name: "Aktivér?"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Ny standard-lydudgang (sink)"
    type: "string"
    default: null
    mandatory: true
compatible_versions: []
compatible_images:
  - "OS2BorgerPC Kiosk"
  - "OS2BorgerPC"
---

## Beskrivelse
Scriptet ændrer hvilken lydudgang der benyttes som standard.

Ændringen tager først effekt efter genstart.

## Parametre
Aktivér: Sæt hak hvis du ønsker at sætte standardlydudgang. Udelad hak hvis du ønsker at nulstille til standard.
Standardlydudgang: Navnet på den lydudgang (i lydsystemet pulseaudio kaldes dette en "sink") der skal sættes som standard.
Du kan finde navnet på alle lydudgange ved at køre scriptet: "Lyd - Udprint informationer omkring lydenheder"