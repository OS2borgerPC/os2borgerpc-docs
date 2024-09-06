---
title: "System - Luk ned dagligt"
category: "System"
source: common/system/shutdown_at_time.sh
---

## Beskrivelse
Lukker computeren ned på et bestemt tidspunkt hver dag.

Inputparametre:
  1. Timer: Angiver hvilket timetal computeren lukker ned.
  2. Minutter: Angiver hvilket minuttal computeren lukker ned.

Eksempel:
Du vælger henholdsvis parametrene "20" og "30" - og maskinen vil dagligt lukke ned kl. 20:30.

Det er også muligt at angive "--off" som første parameter og et tomt andet parameter. Dette standser den daglige nedlukning.

Brugeren varsles fem minutter før nedlukningen.

NB: Brugeren har ingen mulighed for at undgå nedlukning.

Dette script er blevet testet og virker på Ubuntu 22.04.