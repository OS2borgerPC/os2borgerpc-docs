---
title: Tænd/sluk tidsplan
parent: "Manual til OS2BorgerPC Admin"
nav_exclude: false
---

Med Tænd/sluk tidsplan kan man let indstille tænd- og sluk-tidspunkter for alle computere tilknyttet en gruppe. 

Computerne slukkes ikke helt men går i en dvaletilstand, hvor deres strømforbrug er meget lavt og hvor skærmene er slukkede.

En computer vil til enhver tid kunne tændes manuelt, hvis den ved en fejl er blevet lukket ned af tidsplanen.

## Opret en tænd/sluk tidsplan
Klik på tænd/sluk tidsplan i venstremenuen

### Status, navn og dvaletilstand


XX indsæt billede

Øverst til venstre på siden vælges tidsplanens **status**, dens **navn** og **dvaletilstand**, som skal anvendes, når computerne slukker. 

- En tidsplan har kun effekt, hvis dens **status** er aktiv.

- Tidsplanens **navn** er valgfrit. Man kan godt lave flere tidsplaner med samme navn,
men det anbefaler vi ikke, da det gør det sværere at holde styr på tidsplanerne.

- Som standard vil en ny tidsplan have **dvaletilstanden Off**. Klik på spørgsmålstegnet for at få information om den valgte dvaletilstand. Læs om XXinformation om dvaletilstandeXX.

XX indsæt billede
XX Indsæt billede

### Ugeplan
Nederst til venstre indstilles tidsplanens faste ugeplan:

XX Indsæt billede

For hver ugedag vælger man, tænd- og sluk-tidspunkter eller om computeren skal være slukket hele dagen.

På billedet herover er der valgt forskellige tænd- og sluk-tidspunkter for mandag til fredag og konstant slukket i weekenden.

Felterne til tænd- og sluk-tidspunkter tillader kun, at man indtaster gyldige
tidspunkter mellem 00.00 og 23.59. 

Det er muligt at vælge et sluk-tidspunkt, som er før start-tidspunktet. Dette fortolkes som slukning dagen efter. Hvis man fx vælger
tænd kl. 07.00 og sluk kl 02.00 for mandag, vil maskinen tænde kl. 7 mandag morgen og slukke igen kl. 2 tirsdag morgen. Herefter vil den så følge tænd- og sluk-tidspunkterne
for tirsdag. På denne måde er det muligt at planlægge nedlukning efter midnat.

Bemærk at hvis der i ovennævnte situation fx også var valgt tænd kl. 01.00 tirsdag, således at der ikke er et gyldigt tænd-tidspunkt om tirsdagen, vil maskinen tænde 5
minutter efter, at den slukkede. Dette er gjort for at forhindre situationer, hvor maskinen ikke ved, hvornår den skal tænde.

Hvis man vælger et sluk-tidspunkt for dags dato, som er efter start-tidspunktet, men før tidspunktet for opdateringen af tidsplanen, vil maskinen først slukke automatisk på
sluk-tidspunktet for næste dag. Hvis der ikke findes et sluk-tidspunkt for næste dag, vil den automatisk slukke 24 timer efter den modtog planen. Hvis den manuelt slukkes
inden da, vil den vågne efter tidsplanen.

### Lukkedage og ændrede åbningstider

XX Indsæt billede xx 
Der findes to typer undtagelser: **Lukkedage** og **ændrede åbningstider**. 

- En undtagelse med lukkedage er en dato eller periode, hvor der er konstant lukket. 
- En undtagelse med ændrede åbningstider er en dato eller periode med ændrede tænd- og sluk-tidspunkter.

En undtagelse gemmes med et navn og kan knyttes til flere tidsplaner.
Opretter man f. eks. en lukkedags-undtagelse, der hedder "Påskeferie 2025" kan den tilknyttes alle de tidsplaner, hvor påskelukning er relevant.

{: .note }
Husk at trykke **Gem ændringer** inden du navigerer væk fra en tidsplan eller en undtagelse. Ellers bliver dine ændringer ikke gemt!

### Tilknyttede grupper
XX Billede
Nederst til højre på siden kan man knytte grupper til tidsplanen. Kun grupper kan knyttes til en tidsplan - ikke enkelt-computere.
Man kan godtt tilføje flere grupper til en tidsplan, men de må ikke indeholde de samme computere. Så får man en fejl, da en computer ikke kan være underlagt flere tidsplaner. Det giver ikke giver mening.


## Dvaletilstande

I rækkefølge fra mest strømbesparende til mindst strømbesparende er de mulige dvaletilstande **Off**, **Mem**, **Freeze** og **Standby**:
1. **Off** slukker systemet, men ikke helt, da løsningen stadig holder styr på, hvornår PC’en skal tænde igen.
2. **Mem** står for ‘Memory’ da denne tilstand betyder, at den nuværende tilstand bevares i memory (RAM), mens alle andre dele af systemet skifter til low power tilstande. Den er funktionelt det samme som hviletilstand.
3. **Freeze** "fryser" systemet ved at idle processorerne, pause/fryse aktive processer og suspendere enhederne. Den sparer mere strøm end Standby, men mindre end Mem eller Off.
4. **Standby** sætter systemet på standby - hvilket ikke er det samme som
hviletilstand - og Standby sparer mindst strøm, men stadig en del i forhold til den fuldt tændte version.

Den primære grund til at vi inkluderer de re valgmuligheder er, at visse typer hardware ikke understøtter **Off**," som er den tilstand, der sparer mest strøm.


## Manuel opstart efter sluk-tidspunktet
Får man brug for at tænde en computer, der er blevet slukket af tidsplanen kan man frit gøre det.
Den vil herefter slukke automatisk på sluk-tidspunktet for næste dag. Er der ingen sluk-tidspunkt næste dag slukkes den 24 timer efter den blev tændt. Bliver den manuelt slukket vågner den efter tidsplanen. 

## BIOS - Automatisk opstart efter strømafbrydelse

For at minimere potentielle problemer med strømafbrydelser kan nogle BIOS’er
indstilles til at gendanne computerens seneste tilstand (eller tænde den) efter en strømafbrydelse. Det er smart.

BIOS-opsætningen afhænger af maskinen, men på en NUC tilgås denne indstilling typisk ved på BIOS-oversigten at vælge **Advanced** og derefter
**Power**. Herefter ændres indstillingen **After Power Failure** til enten **Last State** eller **Power on**. Det anbefales at vælge **Last State**.

## Opdatering af tænd/sluk tidsplaner
Sådan bliver ændringer til eksisterende tidsplaner effektueret:
- Hvis man ændrer i indstillingerne til en eksisterende aktiv tidsplan eller skifter en inaktiv tidsplan til at være aktiv, vil tidsplanen blive sendt
ud til alle computere i de grupper, som er tilknyttet tidsplanen, når man klikker på ”Gem ændringer.”
- Hvis man tilføjer nye grupper til en aktiv tidsplan, vil tidsplanen også blive sendt ud til alle computere i disse grupper, når man klikker på ”Gem ændringer.”
- Hvis man tilføjer nye computere til en gruppe, som er knyttet til en tidsplan, vil tidsplanen blive sendt ud til disse computere, når man klikker på ”Gem ændringer.”
- Hvis man redigerer eller sletter en undtagelse, som er knyttet til en flere aktive tidsplaner, vil disse tidsplaner blive opdateret og sendt ud med ændringen til alle de
tilknyttede computere, når man klikker på ”Gem ændringer” eller ”Bekræft sletning.”
- Hvis man fjerner en eller flere grupper fra en aktiv tidsplan, vil tidsplanen blive slettet fra alle computere i disse grupper, når man klikker på ”Gem ændringer.”
- Hvis man sletter en tidsplan eller skifter en aktiv tidsplan til at være inaktiv, vil tidsplanen blive slettet fra alle computere i de grupper, der er tilknyttet tidsplanen, når
man klikker på ”Gem ændringer.”
- Hvis man fjerner en eller flere computere fra en gruppe, der er deres eneste relation til en tidsplan, vil tidsplanen blive slettet fra disse computere, når man klikker på ”Gem
ændringer.”
- Tilføjelse/opdatering/sletning af en tidsplan på en computer tager i alle tilfælde først effekt, når computeren tjekker ind på admin-sitet. En computer kan således ikke
modtage en ny/opdateret tidsplan, mens den er slukket eller i dvale.

## Troubleshooting

#### Kun grupper kan tilmeldes tænd/sluk tidsplan - ikke computere
Man tilmelder grupper til tænd/sluk tidsplan - ikke computere.  til en tidsplan. En computer skal derfor være tilmeldt en gruppe for at kunne blive tilmeldt en tidsplan. 

#### En gruppe kan kun være medlem af én tidsplan. 
Hvis en gruppe, der er medlem af tidsplan ”A,” tilføjes til tidsplan ”B,” vil den samtidig blive slettet fra tidsplan ”A,” når man gemmer ændringer.

#### Ny/opdateret tidsplan distribueres kun til tændte computere
En computer kan kun modtage en ny/opdateret tidsplan, hvis den er tændt. Det
betyder, at hvis en computer er lukket ned for en given dag og den derefter – fra admin-sitet – gives en ny tidsplan, vil den ikke følge den nye tidsplan, før den har været tændt.

#### Der er valgt en dvaletilstand som maskinen ikke understøtter
Off er den dvaletilstand, der som standard er sat, når man opretter en tænd/sluk tidsplan. Det er den mest strømbesparende dvaletilstand. Desværre er det ikke alle maskiner der understøtter den. Hvis det er tilfældet vil
maskinen ikke vågne igen, efter at den er slukket via tidsplanen. Den kan stadig tændes manuelt, og der vil ikke ske skade på maskinen.

#### Tidsplaner uden tilknyttede grupper har ingen effekt
Hvis en tidsplan ikke har nogen tilknyttede grupper eller er sat til inaktiv, vil den ikke have nogen effekt.

#### Hvis strømmen går eller computeren slukkes på knappen
- Hvis en computer slukkes på knappen, eller strømmen går, mens den er vågen, vil den ikke vågne igen efter tidsplanen, og man vil være nødt til at tænde den manuelt. Så snart computeren er blevet tændt manuelt, vil den igen begynde at følge tidsplanen.

- BIOS kon ofte indstilles til at XXtænde maskinen igen efter strømafbrydelserXX. Det er smart.

- En strømafbrydelse, mens computeren "sover", betyder ikke noget. Computeren vil stadig vågne op ifølge tidsplanen.
- Hvis en computer slukkes via menuen eller via et script, vil den også stadig vågne efter tidsplanen.

#### Tidsindstillet opstart i BIOS konflikter med Tænd/sluk tidsplan
Hvis BIOS er indstillet til at tænde computeren på et bestemt tidspunkt, samtidig med at der anvendes en tidsplan, vil computeren lukke ned efter tidsplanen, men tænde på det tidspunkt, der er indstillet i BIOS. 

I denne situation vil computeren altså ikke følge tidsplanens tænd-tidspunkter. Dette skyldes, at det generelt ikke er muligt at
modicere BIOS fra styresystemet, så tidsplanen kan ikke overskrive
BIOS-indstillingen. Man vil således være nødt til manuelt at gå ind i BIOS og slå den planlagte opstart fra, hvis computeren skal følge tidsplanens tænd-tidspunkter.

BIOS er dog som udgangspunkt ikke indstillet til at tænde computeren, så dette er kun et potentielt problem, hvis man tidligere har slået indstillingen til.

#### Uret på computeren er ude af sync
Tidsplanen følger tiden på den individuelle maskine. Det betyder, at hvis uret på computeren er ude af sync, så vil maskinen også starte og slukke ude af sync. Hvis I har en firewall, der blokerer for udadgående trafik, foreslår vi, at I åbner for NTP på port 123 UDP, da det bruges til tidssynkronisering.


