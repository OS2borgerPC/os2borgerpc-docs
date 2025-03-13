---
title: "Intro til udvikling på OS2BorgerPC Admin Site"
parent: "Byg og udvikling"
nav_exclude: false
---



### Forudsætninger

For at udvikle på dette projekt skal du have følgende software installeret og konfigureret på din udviklingsmaskine:

1. **Docker**:
   - Docker er nødvendigt for at bygge og køre containerne, der er defineret i 

compose.yaml

-filen.
   - Installer Docker ved at følge instruktionerne for dit operativsystem:
     - [Docker til Linux](https://docs.docker.com/engine/install/)
     - [Docker til Windows](https://docs.docker.com/docker-for-windows/install/)
     - [Docker til Mac](https://docs.docker.com/docker-for-mac/install/)
   - Bekræft installationen ved at køre:
     ```sh
     docker --version
     ```

2. **Docker Compose**:
   - Docker Compose bruges til at definere og køre multi-container Docker-applikationer.
   - Docker Desktop inkluderer Docker Compose, men hvis du har brug for at installere det separat, følg instruktionerne her: [Installer Docker Compose](https://docs.docker.com/compose/install/)
   - Bekræft installationen ved at køre:
     ```sh
     docker-compose --version
     ```

3. **Git**:
   - Git er nødvendigt for versionskontrol og for at klone projektets repository.
   - Installer Git ved at følge instruktionerne for dit operativsystem:
     - [Git til Linux](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#Installing-on-Linux)
     - [Git til Windows](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#Installing-on-Windows)
     - [Git til Mac](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#Installing-on-macOS)
   - Bekræft installationen ved at køre:
     ```sh
     git --version
     ```

### Kloning af repository

Når softwarekravene er på plads, kan du klone projektets repository:

```sh
git clone https://github.com/OS2borgerPC/os2borgerpc-admin-site.git
```

### Kørsel af projektet

Kør projektet ved hjælp af Docker Compose. Naviger til projektmappen og eksekver kommandoen `docker compose up`:

```sh
cd os2borgerpc-admin-site
docker compose up
```

Denne kommando vil bygge og starte containerne, der er defineret i 

```sh
compose.yaml
```
### Tilgå webgrænsefladen
En indbygget webserver starter OS2BorgerPC Admin systemets webgrænseflade på port 9999.

I en browser åbn adressen:
```sh
http://localhost:9999
```

Som standard kan du logge ind med brugeren `admin/admin`

### Start forfra 
Noget af det bedste ved at arbejde med Docker og Docker compose er at man meget nemt kan kan slette alle sine ændringer og starte forfra.
Her er nogle gode kommandoer man bør kende:

## I gang med udvikling

### Vælg udviklingsmiljø (IDE)
Hvilket værktøj skal du programmere i, hvis det ikke skal være Notepad? Et godt bud der er open source og gratis er 
Microsofts populære Visual Studio Code (VS Code). Det kan stærkt anbefales.

### Lær Django
Rygraden i systemet er open source CMS systemet [Django](https://www.djangoproject.com/).

Man kan ikke udvikle til OS2BorgerPC Admin uden at sætte sig ind i hvordan en Django app grundlæggende fungerer.
Der er heldigvis gode tutorials tilgængelige: https://www.djangoproject.com/start/

Man kan også spørge AI som f. eks. ChatGPT, hvis man har spørgsmål om Django udvikling.
Svarene er som regel gode og præcise, fordi er der så meget åben dokumentation tilgængelig på nettet.

### Versionsstyring med Git
Inden du går i gang med at ændre noget, så opret en ny branch. Det er en dårlig ide at arbejde direkte i main/master branch. 
Du løber ind i problemer, når du vil hente ændringer fra upstream.

### Docker compose tricks

Docker compose bygger et image og afvikler koden i admin-site mappen.

Nogle gange bliver ændringer i koden ikke straks synlige i webgrænsefladen.
Andre gange vil du bare gerne starte forfra.

Her er nogle gode kommandoer at kende:

```sh
docker compose up --build
```
Bygger image på ny i forbindelse med opstart

```sh
docker compose down -v
```
Sletter alle containerer og volumes - heruden databasen. Dvs. man starter helt forfra.



