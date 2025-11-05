
## Download OS2BorgerPC Image (ISO)

**OS2BorgerPC image (ISO)** er det image, du kan installere på PCer, for at gøre dem til borger PCer.

Når du installerer en PC med **OS2BorgerPC Image** får du en PC, der er designet, så borgerne kan udføre nødvendige digitale opgaver som at bruge internettet, arbejde med tekstdokumenter, printe og kommunikere med offentlige myndigheder.

Du får også en sikret PC, der beskytter brugernes personlige data via automatisk log-ud, automatisk sletning af brugerdata og løbende sikkerhedsmonitorering.
OS2borgerPC er baseret på desktop udgaven af Ubuntu 22.04 - der er en Linux-distribution.

Download den nyeste version her:

*Bemærk at du skal bruge et andet image, hvis du vil installere en OS2BorgerPC Kiosk, der er en specialudgave af OS2BorgerPC til storskærms-PCer.*

## Hardware-krav
OS2BorgerPC image kan installeres på de fleste computere med en Intel/AMD x86 (64 bit) arkitektur.
Også ældre computere der ikke kan køre Windows 11, vil I mange tilfælde kunne køre OS2BorgerPC.

Der er gode erfaringer med Lenovo-computere i forskellige udgaver. Også Intel NUC er populær som OS2BorgerPC.

Fordi OS2BorgerPC kræver mindre computerkraft og harddiskplads end Windows, kan det også køre på ældre hardware, der ikke kan køre Windows 11. Nogle kommuner genbruger administrative computere til OS2Borgerpc.

Står man overfor at skulle indkøbe mange nye BorgerPCer, kan det anbefales, at lave en prøveinstallation og idriftsætning af 2-3 maskiner, hvor man verificerer at alt virker efter hensigten.

## Bootable USB
Den eneste metode til at installere OS2BorgerPC-image er via en bootable USB.
Når du har downloadet OS2BorgerPC image (ISO) skal du have det overført til et USB-stick på en særlig måde, så der kan bootes fra USB-stick.

### Det skal du bruge:
- En USB-nøgle på mindst 8 GB (helst tom — den bliver slettet).
- OS2BorgerPC image (ISO) fil

### Lav Bootable USB på Windows

1. Download og installer programmet **Rufus** fra [https://rufus.ie](https://rufus.ie)  (Kræver administrator-rettigheder).
2. Indsæt USB stick i computeren
3. Åbn **Rufus**  
4. Under **Device**, vælg dit USB enhed.  
5. Under **Boot selection**, klik **SELECT** og vælg OS2BorgerPC ISO file  
6. Under **Partition scheme**, vælg **GPT**
7. Klik **START** og bekræft at du vil slette alt på USB-enheden.  
8. Vent til Rufus siger **READY**


### Lav Bootable USB på Ubuntu Linux
1. Indsæt USB stick i computeren
2. Åbn programmet **Startup Disk Creator**. Det er præinstallereret i Ubuntu 22.04.
3. XX mangler noget XX

## Klargør PC
- **Sæt strømstik, skærm, mus og tastatur** til computeren.  
- **Tilslut kablet netværk**, hvis det er muligt:   
   - Installation kan også gennemføres **uden netværk** – i så fald hentes en hel masse opdateringer første gang computeren sættes til netværk.  
- Isæt **OS2BorgerPC Bootable USB-stick**.  
- **Tænd computeren** og gå ind i BIOS. Adgang til BIOS, får man ved at trykke på en bestem tast under opstart. Hvilken tast man skal trykke på varierer. Det kan være **F2**, **Delete** eller noget tredje. BIOS kan være beskyttet med et password.

## Tilret BIOS før installation

### Sæt boot options i BIOS
Indstil computeren til at boote fra USB (ikke fra harddisk) ved næste genstart.  
  - At **UEFI Boot**  er aktiveret
  - At **UEFI USB** ligger **over harddisken (UEFI SATA)** i boot order  
  - At *Secure Boot* **ikke er valgt**
    
### Sæt BIOS indstilling for at computeren kan tændes via tryk på tastatur/mus
Hvis computeren, som det anbefales, er fysisk sikret, kan borgerne ikke komme til tænd/sluk knappen. Computeren tændes i stedet ved bevægelse af mus eller tryk på tilfældig tast på tastaturet.
(Denne guide er fra Intel NUC - BIOS menuerne kan se anderledes ud på andre PCer)
- Under **Advanced**, tryk på **Power**.  
- Under **Secondary Power Settings**, scroll ned i bunden af menuen.  
- Sæt flueben i **USB S4/S5 Power**.  
- Scroll ned i bunden af menuen igen.  
- Sæt flueben i **Wake on USB from S5**.

### Sæt BIOS indstilling for at computeren starter automatisk efter strømsvigt
Undgå at møde ind til sorte skærme efter et strømsvigt.
- Under **Advanced**, tryk på **Power**.  
- Under **Secondary Power Settings**, vælg **Power On** ved *After Power Failure*.  

### Sæt BIOS adgangskode
For at sikre, at borgere ikke har adgang til BIOS, sættes et BIOS-password.
- Tryk på fanen **Security**.  
- Tryk på knappen **Set Supervisor Password**.  
- Sæt password til det ønskede.

Husk at gemme ændringer til sidst. 
- Tryk **F10** for *Save and Exit*.  
- Tryk **Yes** for at gemme.

## Installation af OS2borgerPC fra USB-stick

- Efter du har gemt BIOS-ændringer genstarter PC’en. Den starter med et disktjek. Tryk Ctrl + C for at afbryde for at spare tiden.
- Den starter med et grønt skærmbillede.
- Så dukker denne boks op. Vælg det øverste punkt. (Hvis man overskriver en eksisterende installation ser det lidt anderledes ud. Så står der ”Slet Ubuntu 20.04 LTS og geninstaller”)
  
<img width="641" height="488" alt="image" src="https://github.com/user-attachments/assets/66362813-f6ab-4195-9f7a-3b138d628daa" />

- Tryk **Fortsæt**
  
<img width="647" height="213" alt="image" src="https://github.com/user-attachments/assets/2022c47c-c22c-4275-9b66-835c73b2a79e" />

- Nu kører installationen. Det kan tage nogle minutter.
  
<img width="615" height="466" alt="image" src="https://github.com/user-attachments/assets/6a096b18-e0f9-4a87-9fa6-7538ff01b4cb" />

- Installationen er fuldført og der trykkes **Genstart nu**.
  
<img width="641" height="486" alt="image" src="https://github.com/user-attachments/assets/d66a76f2-7750-45cd-9635-bad5e92b7110" />

- Du kan nu tage USB-sticket ud af computeren.

## Start BorgerPC og log ind som superuser
BorgerPC’en starter op. Den logger automatisk ind som Borger. For at kunne lave de nødvendige ændringer, skal man være logget ind som Superuser. 
Når du ikke at logge ind som Superuser i første forsøg, så log ud og prøv igen.

1.	I øverste højre hjørne tryk på det lille tænd/sluk ikon
2.	I menuen vælg **Sluk/log ud**
3.	Vælg **Log ud**
4. Vælg **Superuser** i menuen.
5.	Skriv superusers adgangskode. (Standard-adgangskoden er **superuser**, indtil du via et script ændrer det).

## Opdater alle pakker
Åbn en terminal. 

Opdater alt med 
```
sudo apt update
```
og så
```
sudo apt upgrade
```

## Registrer BorgerPC i administrationssystem
OBS! Hvis PC’en allerede er i systemet skal den slettes, inden den kan oprettes på ny.
•	På skrivebordet ligger der et ikon der hedder Registrer i OS2BorgerPC Admin. Dobbeltklik på det.
•	Du får en dialogboks hvor der står Enter your password to perform administrative tasks. Tast superuser
•	Nu starter en terminal hvor du skal svare på nogle spørgsmål:
1.	Indtast venligst et nyt navn for denne computer:
Kald den BIB-BORGER<nummer på PC’en>
F. eks. BIB-BORGER058
Bemærk at det skal skrives med STORE bogstaver
2.	Tast hvor computeren hører til
Tast 1 for Bibliotekerne

















