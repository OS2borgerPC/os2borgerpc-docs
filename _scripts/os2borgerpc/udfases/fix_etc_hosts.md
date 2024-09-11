---
title: "Udfases - Fix /etc/hosts"
category: "Udfases"
source: /assets/os2borgerpc-scripts/os2borgerpc/udfases/fix_etc_hosts.sh
parameters:
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script er i kategorien "Udfases", da det kun var relevant for maskiner installeret ud fra OS2borgerPC images ÆLDRE end version  4.0.0.

Fixer /etc/hosts til at matche med maskinens hostname, så bl.a.(?) Firefox og LibreOffice gerne skulle fungere uden timeouts på de maskiner der har vist sig at få problemer af det, såsom Lenovo M910S.

Dette script er blevet testet og virker på Ubuntu 22.04.