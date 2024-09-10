---
title: "Printer - Vis indstillinger"
category: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_options_get.sh
parameters:
  - name: "Printer-navn"
    type: "string"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Vis de forskellige indstillinger for den ønskede printer i Job-loggen.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Navnet på printeren (kør evt. "Printer - Vis printer-liste" for at finde det)

