---
title: "Byggeprocesser i OS2BorgerPC"
parent: "Byg og udvikling"
nav_exclude: false
---

## Indledning
For at sikre en ensartet og veldefineret udviklingsproces er der opsat automatiske byggeprocesser for tre centrale komponenter i OS2BorgerPC-projektet:
- **Admin-site (Container Image)**
- **PC ISO Image**
- **Kiosk ISO Image**

Disse processer sikrer, at der altid er en officiel, opdateret og identisk version af softwaren tilgængelig. Dette gør det lettere at samarbejde, fejlmelde og foreslå forbedringer.

## Formål med automatiske byggeprocesser
De automatiske byggeprocesser har flere formål:
- **Effektivitet**: Byggeprocesserne sikrer en hurtig og standardiseret produktion af softwaren.
- **Sporbarhed**: Hver version er entydigt identificeret og dokumenteret.
- **Tilgængelighed**: De nyeste udgaver gøres let tilgængelige for brugere og driftsfolk.

## Hvordan trigges byggeprocesserne?
Byggeprocesserne kan trigges på to måder:
- **Automatisk**:
  - Ved oprettelse af et release (versioneret byg)
  - Ved merge af et pull request (ikke-versioneret byg til testformål)
- **Manuelt**:
  - Brugere med de rette rettigheder kan trigge et byg direkte via GitHub Actions.\
  Dette gøres ved at gå til det relevante workflow og trykke **Run workflow** ([vejledning](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-workflow-runs/manually-running-a-workflow#running-a-workflow)).

### Adgangsrettigheder
- **Release-oprettelse**: Kun brugere med *contributor*-status eller skriverettigheder kan oprette et release ([dokumentation](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)).
- **Manuel byg**: Kun brugere med skriverettigheder kan manuelt trigge en byg. Dette styres via `workflow_dispatch`-konfigurationen i GitHub Actions ([vejledning](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-workflow-runs/manually-running-a-workflow#configuring-a-workflow-to-run-manually)).

## Oversigt over byggeprocesser

### **Admin-site (Container Image)**
1. Koden tjekkes ud.
2. Et Docker image bygges ud fra koden.
3. Image uploades til GitHub Container Registry ([link](https://github.com/OS2borgerPC/os2borgerpc-admin-site/pkgs/container/os2borgerpc-admin-site)) med relevante tags:
   - **Manuelt byg**: Tagges med branchens navn.
   - **Automatisk byg**:
     - Ved release: Tagges med versionsnummer.
     - Ved PR merge: Tagges som "latest".

### **ISO Images (PC og Kiosk)**
1. Koden tjekkes ud.
2. Det officielle Ubuntu 22.04 ISO-image hentes.
3. ISO-filsystemet udpakkes og modificeres med scripts.
4. Den modificerede ISO pakkes tilbage som en ny ISO-fil.
5. ISO filen publiceres:
   - **Manuelt byg**
     - Der genereres en midlertidig artifakt (*-dev.iso*), som kan downloades direkte fra GitHub Actions:\
       ![artifakt](https://github.com/user-attachments/assets/d4ac338a-b3c1-4118-81cc-01c6f6641553)
       *Development iso-fil kan downloades dirkete fra Github*

   - **Automatisk byg**
     - Ved release:
       - ISO-filen uploades til en ekstern hosting service (AWS S3 kompatibel).
       - Download-linket indsættes i release notes ([eksempel](https://github.com/OS2borgerPC/os2borgerpc-image/releases)).
     - Ved PR merge: Samme som manuelt byg.

## Hvor findes de endelige produkter?

### Releases
- **Admin-site (Container Image)**: [GitHub Container Registry](https://github.com/OS2borgerPC/os2borgerpc-admin-site/pkgs/container/os2borgerpc-admin-site)
- **PC ISO Image**: Download link findes i [Releases](https://github.com/OS2borgerPC/os2borgerpc-image/releases)
- **Kiosk ISO Image**: Download link findes i [Releases](https://github.com/OS2borgerPC/os2borgerpc-kiosk-image/releases)

### Release Notes
- Release notes genereres automatisk og knyttes til de enkelte releases.
- De kan findes under *Releases* på de relevante GitHub repositories:
  - [Admin site releases](https://github.com/OS2borgerPC/os2borgerpc-admin-site/releases)
  - [PC ISO Releases](https://github.com/OS2borgerPC/os2borgerpc-image/releases)
  - [Kiosk ISO Releases](https://github.com/OS2borgerPC/os2borgerpc-kiosk-image/releases)
