---
title: Overvågning
parent: "Manual til OS2BorgerPC Admin"
nav_exclude: false
---

Overvågning kan bruges til at opdage:
- computere der offline
- sikkerhedshændelser på computere
- låst brugerkonto som følge af sikkerhedshændelse

Overvågning kan sende email-notifikationer, når der indtræffer en hændelse. 

#### Under Overvågning i venstremenuen er tre menupunkter:

## Hændelser

XX Indsæt billede XX

Venstremenuens **Hændelser** åbner en kronologisk oversigt over registerede hændelser. I oversigten kan man se, hvad det er for en regel, der har udløst hændelsen og hvilken computer det drejer sig om. Som standard vises alle ikke-løste hændelser med en alvorlighedsgrad over normal. 

Fra oversigten kan man håndtere hændelser. En hændelse har enten status `ny`, `tildelt` eller `løst`. Når du markerer en hændelser dukker knappen `Håndter 1 ud af 20 hændelser` op. Ved håndterering ændrer du hændelsens status, tildeler opgaven til en bruger på sitet og tilføjer evt. en note. Flere hændelser kan håndteres på en gang. 


## Overvågningsregler
Under **Overvågningsregler** i venstremenuen kan man se hvilke sikkerhedsregler og off-line regler, der er aktive på sitet. Man kan også oprette nye off-line regler og sikkerhedsregler. Når man opretter en regel kan man vælge hvilke computere/grupper, der skal overvåges og hvilke email-adresser der skal notificeres ved en hændelse.

**Off-line regler** bruges til at opdage computere, der er off-line. Det kan skyldes netværksudfald, at computeren er blevet slukket på knappen eller hardwarefejl. På lokationer uden personale opdager man ikke nødvendigvis fejl på skærme og computere, og her er overvågning særlig smart. Der kan sendes email-notifikationer ved off-line hændelser, så man ikke behøver at logge ind i admin-sitet for at opdage hændelsen. XXLæs om oprettelse af off-line regler.XX

**Sikkerhedsregler**
Sikkerhedsregler er baseret på sikkerhedsscripts, som kører på BorgerPCerne og overvåger deres tilstand. Hvert sikkerhedsscript tjekker for noget helt bestemt, f. eks. om der tilsluttes et nyt keyboard til computeren. Ud fra kriterierne i den opsatte sikkerhedsregel udløses en sikkerhedshændelse. Der kan sendes email-notifikationer ved sikkerhedshændelser, så man ikke behøver at logge ind i admin-sitet for at opdage hændelsen.

## Sikkerhedsscripts
Der er pt. tre sikkerhedsscripts indbygget i OS2BorgerPC Admin.

#### Detekter nytilsluttet keybord
Nogle kommuner har oplevet at svindlere har tilsluttet nye keyboards, der opsamler information om tastetryk. Det er derfor værd at holde øje med om nye keybords tilsluttes. XLæs mere om sikkerhedsscriptet Detekter nytilsluttet keybordX

#### Detekter sudo-kørsel
Hvis man forsøger at afvikle et program på BorgerPC med administratorrettigheder, kaldes det en sudo-kørsel. Sikkerhedshændelsen udløses selvom det ikke er lykkedes. Dvs. det er selve forsøget, der udløser hændelsen. Programmer kan kun køres med administratorrettigheder, hvis man kender password på administratorbrugeren (superuser), og det gør borgerne jo ikke, så hændelsen betyder ikke at der rent faktisk er sket et sikkerhedsbrud.
XLæs om sikkerhedsscriptet Detekter sudo-kørselX

#### Detekter lås Borgerkonto

Man kan lokalt tilføje sine egne sikkerhedsscripts.

Sikkerhedsscriptet afvikles hver gang en computer tjekker ind på admin-sitet.
Dette Sikkerhedsscript giver en Sikkerhedshændelse hvis Borger bliver låst ude/sat til udløbet.

Dette script virker kun på OS2borgerPC, ikke OS2borgerPC Kiosk.

Bruges sammen med en eller begge af følgende: 
- "Bloker for login ved USB-event" + "Sæt bruger aktiv efter blokeret login"
- "OS2borgerPC - Bloker for login ved hård nedlukning" + "Sæt bruger aktiv efter blokeret login"









I oversigten "Overvågningsregler" vises alle definerede Sikkerhedsregler og Offline-regler, som der holdes øje med. Du kan redigere en eksisterende offline-regel ved at vælge den i listen. Du kan oprette en ny offline-regel ved at klikke på "Tilføj ny offline-regel" oven over listen. Interfacet for begge operationer har samme form.

En offline-regel har følgende parametre:


Navn (påkrævet): Navnet på den pågældende offline-regel.
Overvågningsperiode (påkrævet): Den periode hvor reglen er aktiv. Det anbefales at vælge denne periode således, at du undgår at modtage notifikationer, når computerne bliver slukket om natten.
Maksimal tilladt offline-periode, i minutter (påkrævet): Den maksimale tidsperiode som en computer kan være offline under overvågningsperioden før der sendes email-notifikationer. Kan ikke være under 15 minutter.
Alvorlighedsgrad (påkrævet): Vælg mellem Kritisk, Høj og Normal.
Beskrivelse (valgfri): En beskrivelse af den pågældende offline-regel.
Overvågede grupper (valgfri): Grupperne definerer hvilke computere, den aktuelle offline-regel er aktiv for.
Modtager(e) af email-advarsel (valgfri): Hvilke brugere der skal modtage email-notifikationer relateret til denne offline-regel. Bemærk at hvis en overvåget PC tilhører en eller flere grupper med ansvarspersoner, så vil disse ansvarspersoner modtage eventuelle email-notifikationer relateret til den PC i stedet for de modtagere, som er valgt her.
Ændringer i en offline-regel vil ikke tage effekt, før du har klikket på "Gem ændringer" i bunden af skærmbilledet. På lignende vis skal du klikke på "Gem ændringer" for at færdiggøre oprettelsen af en ny offline-regel, når du har udfyldt de påkrævede parametre. Du kan verificere, at offline-reglen er blevet oprettet ved at tjekke om den står på listen over overvågede regler.



Der er pt. tre sikkerhedsregler i OS2BorgerPC, som man kan vælge at aktivere:


- Sikkerhedsscripts


Når man klikker på "Sikkerhedsscripts" i venstremenuen, vil man til højre for venstremenuen få vist en liste af Sikkerhedsscripts, og til højre for denne liste vil man få vist redigeringsinterfacet for Sikkerhedsscripts.

Sikkerhedsscripts holder øje med specielle hændelser, hvorimod Scripts er til enkeltstående handlinger.

Listen af Sikkerhedsscripts er delt op i to dele som kan skiftes imellem ved at klikke på fanebladene "Lokale scripts" og "Globale scripts" oven over listen.

Lokale scripts dækker over Sikkerhedsscripts, som kun kan bruges på det site man er under, mens Globale scripts dækker over Sikkerhedsscripts, der kan bruges på alle sites.

For hvert Sikkerhedsscript har du mulighed for følgende:

Redigering af Sikkerhedsscripts
Hændelser
Sikkerhedsregler
Hvis du ønsker at oprette et nyt Sikkerhedsscript skal du klikke på "Tilføj nyt Sikkerhedsscript" oven over listen med Sikkerhedsscripts. Dette vil åbne en dialog hvor du kan udfylde script-navn, beskrivelse og uploade script-kode. Når du derefter klikker på "Opret Sikkerhedsscript" vil Sikkerhedsscriptet blive oprettet, og du vil blive viderestillet til redigeringssiden for det nyoprettede sikkerhedsscript.