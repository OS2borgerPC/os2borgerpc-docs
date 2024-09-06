---
title: "Desktop - Genvej til program fra menu"
category: "Desktop"
source: os2borgerpc/desktop/desktop_launcher_program_shortcut.sh
parameters:
  - name: "Tilføj programmet?"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Programnavn"
    type: "string"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Tilføjer/Fjerner en genvej i menuen til venstre, ved siden af skrivebordet.
Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Aktiver: 
  Sæt hak: Programmet tilføjes til menuen.
  Fjern hak: Programmet fjernes fra menuen (hvis det findes)
2: Programnavn: Hvilket program du ønsker at tilføje eller slette.
    Eksempler: firefox, google-chrome, simple-scan, yelp, libreoffice-impress, libreoffice-writer, libreoffice-calc, org.gnome.Nautilus

Hvis du ikke kender program-navnet præcist, kan du bruge scriptet "Desktop - Vis programliste".

