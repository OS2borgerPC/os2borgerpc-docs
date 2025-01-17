---
title: Computere
parent: "Administrationssiden"
nav_exclude: false
---
Menupunktet **Computere** i venstremenuen åbner en liste med alle computere for sitet. Der er sorteret med nye/inaktive computere, der venter på at blive aktiverede øverst, og ellers efter hvornår de senest er set.

Du kan klikke på den enkelte computer for at se nærmere info om den.

## Administration af computere
![Detaljer for en computer](https://github.com/user-attachments/assets/60ac857f-3fb9-44e2-810c-af5e519a1833)
*Detaljer for en computer*


Klikker du på en computer i computerlisten åbner **Detaljer**. 

Øverst på siden vises tidspunkt for seneste tjek-ind, tidspunkt for seneste sikkerhedshændelse og hvornår computeren blev tilmeldt admin-sitet.

Nedenunder vises stamdata om computeren:

**UID**: En id-streng  der genereres automatisk når computeren tilmeldes sitet. Kan ikke ændres. \
**Navn**: Det computernavn, der blev indtastet, da computeren blev tilmeldt sitet. Det kan efterfølgende ændres.\
**Beskrivelse**: Kan udfyldes hvis man ønsker det.\
**Placering**: Kan udfyldes hvis man ønsker det.\
**Aktiveret**: Når en computer tilmeldes admin-sitet er den ikke aktiveret. Den skal aktiveres før man kan sende scripts til den. Læs mere om [aktivering af computer](XXX)

#### Grupper
Til højre kan du se computerens gruppemedlemskaber og ændre i dem.
- Tilføjer til gruppe ved at klikke på **Tilføj computer til gruppe**. Hvis der findes grupper, som computeren endnu ikke er medlem, af vil de dukke op i en liste. Klik på de grupper, som du ønsker at tilføje. 

- Fjern fra gruppe ved at klikke på det X, som vises til højre for gruppens navn i listen over gruppetilhørsforhold. 

**Husk at ændringerne ikke bliver permanente, før du har klikket på "Gem ændringer" nederst i skærmbilledet.**

## Aktivering af computer
Når du har installeret OS2borgerPC på en computer og registreret den på admin-sitet, vil den dukke op i listen over nye computere under site-status. 

Før du kan begynde at arbejde med computeren, er det nødvendigt at aktivere den. Det gør du ved at klikke på computeren og sætte et hak i fluebenet **Aktiv** og klikke på **Gem ændringer**. Derefter er computeren aktiveret.

Bortset fra selve tilmeldingen vil administrationssitet altid ignorere alle henvendelser fra computere, der ikke er aktiveret. Dette er dels en praktisk foranstaltning (der er ingen grund til at begynde at opdatere en computer, før man ved, at den er parat), dels en sikkerhedsforanstaltning.

Bemærk: En af grundene til, at alle computere skal aktiveres manuelt, er at forhindre fremmede computere i at "koble sig på" dit site uden dit eller din organisations vidende. Du skal derfor kun aktivere en computer, hvis du ved, at den skal være der.

## Jobhistorik
På fanen **jobhistorik** ser du en historik over jobs der er kørt på computeren. Hvis du klikker på info-ikonet til højre for det enkelte job, får du mulighed for at se log-output for jobbet samt for at køre jobbet igen, hvis det er afsluttet (primært relevant hvis det fejlede).

## Konfigurationer
{: .warning }
Slet eller rediger ikke konfigurationer, medmindre du er sikker på, hvad du gør!

{: .highlight }
Konfigurationer er funktionalitet henvendt primært til teknisk fejlfinding, systemadministratorer og scriptudviklere, og derfor formentlig ikke relevant for de fleste.

På fanebladet **Konfigurationer** kan du se alle konfigurationer der er sat for computeren. Konfigurationer bruges til at udveksle information mellem admin-sitet og de tilknyttede computere, i begge retninger.
Dvs. det er både muligt fra adminsitet at specificere en værdi som en eller flere computere så vil modtage, og ligeledes sender en computer værdier til adminsitet.

Generelle eksempler på anvendelsesmuligheder:

- Computeren sender bl.a. information om dens hostname, dens IP-addresser, den nuværende kernel-version og det sidste tidspunkt, hvor den foretog automatiske opdateringer.
Det kan i nogle tilfælde være relevant for systemadministratorer.

- Computeren sender ligeledes information om den kører BorgerPC eller BorgerPC Kiosk, samt de specifikke versioner heraf.
Det kan i nogle tilfælde være relevant at vide ift. fejlfinding.

- Man ønsker ifm. udviklingen af et script at sende konfiguration dertil via adminsitet, som så kan opdateres uden genkørsel af scripts, eller som kan variere ml. grupper eller computere.

Mange konfigurationer styres af adminsitet fremfor på den enkelte computer. Dvs. hvis du ændrer værdien på den enkelte computer, vil den oftest blive ændret tilbage til hvad adminsitet siger ved næste tjek-ind (værdier uden _ foran bestemmes af adminsitet).

#### Teknisk information om konfigurationer til systemadministratorer
Klik på knappen **Tilføj konfiguration** for at tilføje en ny konfigurationsnøgle/værdi.
For at rette eller slette en værdi, skal du klikke på **Redigér** eller **Slet** ud for den enkelte nøgle.

Konfigurationer findes på tre niveauer:

1. Site-konfigurationer\
Disse konfigurationsparametre gælder for alle computere, der er tilknyttet det valgte site.
Site-konfigurationerne kan overstyres via tilpassede konfigurationsnøgler/værdier på grupper og på de enkelte computere.

2. Gruppe-konfigurationer\
Ændringer for konfigurationer på en gruppe vil påvirke alle computere der er medlem af gruppen, medmindre den pågældende konfigurationsnøgle er blevet special-tilpasset på den enkelte computer.

3. Computer-konfigurationer\
Konfigurationer angivet på en computer vil altid tage præcedens over site-konfigurationer eller konfigurationer på grupper som computeren er medlem af.

#### Betydningen af de indbyggede konfigurationer
Alle værdier uden _ foran bestemmes af adminsitet, mens værdier med _ bestemmes af computeren / klienten.
Det vil i praksis sige, at hvis man eks. ændrer os2borgerpc_version på computeren, så vil den blive overskrevet efter næste tjek-ind med adminsitet.




