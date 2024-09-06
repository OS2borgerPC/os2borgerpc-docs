---
title: "Browser - Sæt standard-browser"
category: "Browser"
source: os2borgerpc/browser/browser_set_default.sh
parameters:
  - name: "Ønsket standardbrowser (firefox, google-chrome, microsoft-edge)"
    type: "string"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Skifter standard-browseren ml. eksempelvis Firefox og Chrome. 
Installerer du andre browsere, virker scriptet også med disse.

Ved en frisk installation af BorgerPC er firefox allerede standardbrowser.
Hvis maskinen i stedet skal bruge Chrome eller Edge som standardbrowser, forudsætter det at disse browsere først er installeret, via de pågældende scripts.

Det kan være nødvendigt med logud, før det tager effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: 'firefox' skifter standardbrowseren til firefox, 'google-chrome' skifter den til Chrome og 'microsoft-edge' sætter den til Edge.



