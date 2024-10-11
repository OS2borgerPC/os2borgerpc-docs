---
title: "System - Opdater alt nu"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/update_all.sh
compatible_versions: 
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
  - "OS2BorgerPC Kiosk"
---

## Beskrivelse
Dettte script opdaterer alle pakker på systemet "her og nu". 

Så det anbefales at køre dette script hvis en opdatering ude på maskinen er gået galt, eller hvis man kun har sat automatiske sikkerhedsopdateringer til.

Da scriptet involverer overførsel af meget data kan det i nogle situationer godt fejle, hvis der i opdateringsperioden opstår netværksproblemer lokalt eller hos de servere, der opdateres fra. 
Oplever du fejl, kan det derfor godt anbefales at prøve at køre scriptet én gang til. Fortsætter fejlen så kontakt os.

Dette script er blevet testet og virker på Ubuntu 22.04.