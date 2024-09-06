---
title: "Sikkerhed - Sæt Borger som aktiv efter blokeret login (lås op)"
category: "Sikkerhed"
source: os2borgerpc/sikkerhed/unexpire_user.sh
parameters:
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Dette script gør det muligt for Borger igen at logge ind efter blokeret login.

Benyttes sammen med Scriptet "Bloker for login ved USB event" og Sikkerhedsscriptet "Detekter låst/udløbet bruger event".

Udarbejdet af Alexander Faithfull <af@magenta.dk> og Søren Howe Gersager <shg@magenta.dk>.

Dette script er blevet testet og virker på Ubuntu 22.04.