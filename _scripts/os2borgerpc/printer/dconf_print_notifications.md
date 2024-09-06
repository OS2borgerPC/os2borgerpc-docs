---
title: "Printer - Slå print-notifikationer fra"
category: "Printer"
source: os2borgerpc/printer/dconf_print_notifications.sh
parameters:
  - name: "Aktivér?"
    type: "checkbox"
    default: null
    mandatory: false
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Nogle kunder har ønsket at slå print-notifikationerne fra, da de benytter Princh, og på det tidspunkt er printjobbet godt nok sendt til Princh-applikationen, men der er endnu ikke udskrevet noget.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
  Aktivér?
    Sæt hak: Slår print-notifikationer fra
    Lad stå tom: Slår print-notifikationer til (standard)

