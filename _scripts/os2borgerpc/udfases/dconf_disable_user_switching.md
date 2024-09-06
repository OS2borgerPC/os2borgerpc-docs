---
title: "Udfases - Desktop - Fjern brugerskifte fra menuen"
category: "Udfases"
source: os2borgerpc/udfases/dconf_disable_user_switching.sh
parameters:
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script er i kategorien "Udfases", da fjernelsen af brugerskifte allerede er indbygget i image 5.0.0 og senere,
og også fordi brugerskifte pt. giver nogle problemer ift. rydning af hjemmemappen.

Fjerner muligheden for at skifte bruger fra menuen oppe til højre.
Brugerskifte kan derved kun ske ved logud.

Dette script er blevet testet og virker på Ubuntu 22.04.