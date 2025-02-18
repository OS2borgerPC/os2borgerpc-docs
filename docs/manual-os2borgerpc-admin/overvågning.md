---
title: Overvågning
parent: "Manual: OS2BorgerPC Admin"
nav_exclude: false
---

Overvågning kan bruges til at opdage:
- computere der er offline
- sikkerhedshændelser på computere
- låst brugerkonto som følge af sikkerhedshændelse

Overvågning kan sende email-notifikationer, når der indtræffer en hændelse. 

### Under Overvågning i venstremenuen er tre menupunkter:

## Hændelser

XX Indsæt billede XX

Venstremenuens **Hændelser** åbner en kronologisk oversigt over registerede hændelser. I oversigten kan man se, hvad det er for en regel, der har udløst hændelsen og hvilken computer det drejer sig om. Som standard vises alle ikke-løste hændelser med en alvorlighedsgrad over normal. 

Fra oversigten kan man håndtere hændelser. En hændelse har enten status **Ny**, **Tildelt** eller **Løst**. 

Når du markerer en hændelser dukker knappen **Håndter 1 ud af 20 hændelser** op. Ved håndterering ændrer du hændelsens status, tildeler opgaven til en bruger på sitet og tilføjer evt. en note. Flere hændelser kan håndteres på en gang. 


## Overvågningsregler
Under **Overvågningsregler** i venstremenuen kan man se, hvilke sikkerhedsregler og off-line regler, der er aktive på sitet. 
Når man opretter nye regler, vælger man hvilke computere/grupper, der skal overvåges, og hvilke email-adresser der skal notificeres ved en hændelse.

**Off-line regler** bruges til at opdage computere, der er off-line. Det kan skyldes netværksudfald, at der er blevet trykket på tænd/sluk-knappen på computeren eller hardwarefejl. 
På lokationer uden personale opdager man ikke nødvendigvis fejl på skærme og computere, og her er overvågning særlig smart. Der kan sendes email-notifikationer ved off-line hændelser, så man ikke behøver at logge ind i admin-sitet for at opdage hændelsen. XXLæs om oprettelse af off-line regler.XX

**Sikkerhedsregler** er baseret på sikkerhedsscripts, som kører på computerne og overvåger deres tilstand. 
Hvert sikkerhedsscript tjekker for noget helt bestemt, f. eks. om der tilsluttes et nyt keyboard til computeren. 
Ud fra kriterierne i den opsatte sikkerhedsregel udløses en sikkerhedshændelse, hvis det som scriptet tjekker for sker. 
Der kan sendes email-notifikationer ved sikkerhedshændelser, så man ikke behøver at logge ind i admin-sitet for at opdage hændelsen.

## Sikkerhedsscripts
Der er pt. tre sikkerhedsscripts indbygget i OS2BorgerPC Admin.

### Detekter nytilsluttet keybord
Nogle kommuner har oplevet at svindlere har tilsluttet keyboards med indbyggede "keyloggers", der opsamler information om tastetryk. 
Det er derfor værd at holde øje med om nye keybords tilsluttes. XLæs mere om sikkerhedsscriptet Detekter nytilsluttet keybordX

### Detekter sudo-kørsel
Når man på et Linux-system eksekverer et program med administratorrettigheder, kaldes det en sudo-kørsel. 
Scriptet "Detekter sudo-kørsel" overvåger om nogen *forsøger* at eksekvere et program med administratorrettigheder. Bemærk at sikkerhedshændelsen udløses selvom det ikke lykkedes. 
Dvs. det er selve forsøget, der udløser hændelsen. 

Programmer kan kun eksekveres med administratorrettigheder, hvis man kender password på administratorbrugeren (superuser), og det gør borgerne jo ikke.
Derfor vil hændelsen ofte kunne opstå uden at der rent faktisk er sket et sikkerhedsbrud.
XLæs om sikkerhedsscriptet Detekter sudo-kørselX

### Detekter låst Borgerkonto
Overvåger om  Borger-kontoen er blevet låst for login/sat til udløbet.
Scriptet bruges i kombination med fire andre scripts i en samlet arbejdsgang for sikkerhedsstyring.

Bruges sammen med en eller begge af følgende: 
1. "Bloker for login ved USB-event" + "Sæt bruger aktiv efter blokeret login"
2. "OS2borgerPC - Bloker for login ved hård nedlukning" + "Sæt bruger aktiv efter blokeret login"

## Sikkerhedsworkflow omkring USB-events
Nogle kommuner har sikret deres computere fysisk ved at låse dem inde i metal-kabinetter, der gør det fysisk umuligt at isætte USB-sticks eller keybords.
I OS2BorgerPC regi er lavet en produktionstegning til et metalkabinet, som nogle kommuner har valgt at få produceret hos en smed. XXSe tegning til metal-kabinet her.XX

Kan man ikke sikre sine computerne fysisk, kan man i stedet implementere en arbejdsgang for at opnå samme sikkerhedsniveau.
1. Når en usb-enhed isættes eller fjernes, blokeres borgerlogin på computeren øjeblikkeligt. Dvs. computeren kan ikke længere bruges og af samme årsag bliver ingen eksponeret for en evt. keylogger der er blevet isat.
2. Nedlåsningen af computeren registreres af sikkerhedsscriptet "Detekter låst brugerkonto" og der oprettes en sikkerhedshændelse., som personalet notificeres om via email.
2. Personale bevæger sig ud til computeren, og sikerer sig at der ikke er tilsluttet uautoriserde USB-enheder til computeren.
4. Personale behandler sikkerhedshændelsen på OS2BorgerPC administrationssiden
3. Personale kører fra OS2BorgerPC administrationssiden et script på computeren der fjerner låsen, så borgere igen kan benytte den pågældende computer.

Det høje sikkerhedsniveau kan kun opretholdes hvis borgerne ikke har adgang til computerne, når de er slukkede. Er en computer slukket, mens der isættes en USB-enhed, bliver det ikke opdaget.
Af samme grund har off-line reglerne også et sikkerhedsaspekt. Slukker man en PC, ved at tage strømmen, kan der isættes en USB-logger uden at det opdages.





---
UNDER UDARBEJDELSE

Dette script virker kun på OS2borgerPC, ikke OS2borgerPC Kiosk.






Man kan lokalt tilføje sine egne sikkerhedsscripts.

Sikkerhedsscriptet afvikles hver gang en computer tjekker ind på admin-sitet.




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