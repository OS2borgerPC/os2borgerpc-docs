---
title: "System - CPU temperaturmåling"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/computer_temperature.sh
compatible_versions: 
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
  - "OS2BorgerPC Kiosk"
---

## Beskrivelse
Måler CPU-temperaturen.

Installerer acpi, hvis det ikke allerede er til rådighed.

Forudsætter, at der er et fungerende termometer i hardwaren.

Dette script er blevet testet og virker på Ubuntu 22.04.