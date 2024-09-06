---
title: "Printer - Slet printer"
category: "Printer"
source: os2borgerpc/printer/printer_del.sh
parameters:
  - name: "Navn"
    type: "string"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Slet den angivne printer.

Det kan både være en regulær netværksprinter eller en Princh-printer.

For at finde navnet på printeren, kan du køre scriptet "Printer - Vis printer-liste".

Dette script er blevet testet og virker på Ubuntu 22.04.