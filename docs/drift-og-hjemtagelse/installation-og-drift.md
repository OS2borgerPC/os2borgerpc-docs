---
title: "Installation og drift af OS2BorgerPC Admin"
parent: "Drift og hjemtagelse"
nav_exclude: false
---

## Download OS2BorgerPC Admin indstallationspakke

Den nyeste version af **OS2BorgerPC Admin installationspakken** kan downloades som en tar.gz-pakke via nedenstående link:

[Download OS2BorgerPC Admin](https://github.com/OS2borgerPC/os2borgerpc-admin-site-deployment/releases/latest){: .btn .btn-blue }


## Installationsvejledning
Installationspakken er testet på Ubuntu Server 22.04 og 24.04.

### Forudsætninger
Før du begynder, skal du sikre dig, at følgende er installeret på dit system:
1. **Docker**: Installer [Docker Engine](https://docs.docker.com/engine/install/) (version 20.10 eller nyere). Sørg for at den bruger, som du vil installere med, har de nødvendige rettigheder til at køre Docker-kommandoer ved at gøre brugeren til medlem af `docker`-gruppen).

2. **Docker Compose**: [Installer Docker Compose v2](https://docs.docker.com/compose/install/linux/).

3. **Task**: Installer [Taskfile](https://taskfile.dev/#/installation). Task er et automatiseringsværktøj som som installationspakken bygger på.


### Tjek at forudsætninger virker som de skal

Kør følgende kommandoer for at verificere, at forudsætningerne er installeret:

```bash
# Kontroller Docker-installation
docker --version

# Kontroller Docker Compose-installation
docker compose version

# Kontroller Taskfile CLI-installation
task --version
```

### Download og udpak
Download OS2BorgerPC Admin installationspakken. [Her er link til seneste release.](https://github.com/OS2borgerPC/os2borgerpc-admin-site-deployment/releases/latest)

Brug f. eks. kommandoen `wget <URL>` til at downloade.
 
Udpak den downloadede fil:

```bash
# Opretter en mappe til systemet
mkdir -p os2borgerpc-admin
# Udpakker til mappen
tar -xvzf <FILNAVN>.tar.gz -C os2borgerpc-admin
```

### Præ-installationskrav
Der skal oprettes en konfigurationsfil (`.env`) med lokale systemindstillinger.

1. Kopier filen `.env.example.` til `.env`.

```bash
cp .env.example .env
```

Åbn `.env` i en text editor som f. eks. `nano`.

```bash
nano .env
```
2. Tilret indstillinger til jeres lokale forhold.
Som minimum skal disse indstillinger ændres.
- `DOMAIN`: Dit domænenavn som skal matche dit SSL certifikat
- `DB_PASSWORD`: Angiv et stærkt password
- `SECRET_KEY`: Angiv en stærk nøgle.
- `ALLOWED_HOSTS`: Begræns hvilke domæner/ip-adresser der skal have adgang til admin-site, hvis det er på internettet.

Her er en oversigt over alle systemindstillinger. XX

### Installation med task
Kør `task`. Der vises en menu med alle tilgængelige kommandoer.

```bash
# Gå ind i mappen
cd os2borgerpc-admin
# List alle tilgængelige kommandoer
task
```
Menuen ser sådan ud:
```bash
task: Available tasks for this project:
* default:         The default task that shows help
* down:            Remove all containers and volumes
* install:         Install the project
* reinstall:       Reinstall from scratch. Removes the database, all containers, and volumes.
* stop:            Stop all containers without altering anything else
* up:              Take the environment up without altering the existing state of the containers
* upgrade:         Upgrades the admin site to a newer version
```
Man installerer ved at køre denne kommando:

```bash
task install
```
Der er nogle præ-installations krav, der skal være opfyldt. Læs mere om præ-installationskravene her. XX

Tast `yes` for at fortsætte.

```bash
====================================================
Pre-installation Requirements
====================================================

To proceed with the installation, ensure the following steps are completed:
1. Update '.env'. Change the passwords and secret keys.
2. Place your SSL certificate files ('nginx.crt' and 'nginx.key') in the 'ssl' directory.

Have you completed the above pre-installation steps? (yes/no)
```

Installationen kører færdig uden yderligere interaktion.

Til slut vises info om, hvordan du logger ind. Det der vises afhænger af dine indstillinger i `.env`:

```bash
====================================================
OS2Borgerpc Admin is now available via the URLs below
====================================================
Admin: https://display-devs.sonderborg.dk
Django Backend: https://display-devs.sonderborg.dk/admin
====================================================
You can log in with the following credentials:
Username: admin
Password: admin
```

### Oversigt over systemindstillinger

| Variabel                     | Forklaring                                                                 | Standardværdi                                           | Påkrævet |
|------------------------------|----------------------------------------------------------------------------|-------------------------------------------------------|----------|
| `DOMAIN`                     | Domænenavn for applikationen                                              | `demo.os2borgerpc.dk`                                                 | Ja       |
| `VERSION`                    | Version af applikationen. Find versionsnummer for seneste version her: https://github.com/OS2borgerPC/os2borgerpc-admin-site/releases                                                  | `7.0.1`                                                 | Ja       |
| `DB_HOST`                    | Databasevært                                                               | `db`                                                  | Ja       |
| `DB_NAME`                    | Navn på databasen                                                          | `bpc`                                                 | Ja       |
| `DB_USER`                    | Brugernavn til databasen                                                   | `bpc`                                                 | Ja       |
| `DB_PASSWORD`                | Adgangskode til databasen                                                  | `bpc`                                                 | Ja       |
| `DB_PORT`                    | Databaseport                                                               | Ingen                                                 | Nej      |
| `ALLOWED_HOSTS`              | Hvis din applikation er tilgængelig via internettet, kan adgangen begrænses til enheder fra dit netværk. Tilføj dine offentlige udgående IP-adresse til ALLOWED_HOSTS. Andre, der forsøger at forbinde, vil få et 404 svar.                                                  | `*`                                                   | Ja       |
| `CORE_SCRIPT_VERSION_TAG`    | Version af de globale scripts. Find versionsmummer for seneste version her: https://github.com/OS2borgerPC/os2borgerpc-core-scripts/releases                                              | `v1.0.1`                                              | Ja       |
| `CORE_SCRIPT_COMMIT_HASH`    | Hver version af globale scripts har et matchende commit-hash. Find det i release beskrivelsen her: https://github.com/OS2borgerPC/os2borgerpc-core-scripts/releases                                          | `a96d19567bf5c002c76d16cf80f6c894c2af499`             | Ja       |
| `PC_IMAGE_RELEASES_URL`      | URL til download af BorgerPC ISO images                                    | `https://github.com/OS2borgerPC/os2borgerpc-image/releases` | Nej      |
| `KIOSK_IMAGE_RELEASES_URL`   | URL til download af Kiosk ISO images                                       | `https://github.com/OS2borgerPC/os2borgerpc-kiosk-image/releases` | Nej      |
| `DEBUG`                      | Aktiverer debug-tilstand i Django                                          | `False`                                                | Nej      |
| `SECRET_KEY`                 | Hemmelig nøgle til Django                                                  | `v3rys1kr3t`                                          | Ja       |
| `ADMIN_USERNAME`             | Brugernavn for admin-bruger                                                | `admin`                                               | Ja       |
| `ADMIN_EMAIL`                | Email for admin-bruger. Kan ændres i GUI efter installation (Hovedmenu > Brugere).                                                     | `os2borgerpc_admin@os2borgerpc-vendor.example`        | Ja       |
| `ADMIN_PASSWORD`             | Adgangskode for admin-bruger. Ændres i GUI efter installation (Hovedmenu > Brugere).                                              | `admin`                                               | Ja       |
| `TIME_ZONE`                  | Tidszone for applikationen                                                 | `Europe/Copenhagen`                                   | Ja       |
| `LANGUAGE_CODE`              | Sprogkode for applikationen                                                | `da-dk`                                               | Ja       |
| `INITIALIZE_DATABASE`        | Initialiserer databasen ved første kørsel                                  | `True`                                                | Nej      |
| `LOG_LEVEL`                  | Logniveau for applikationen                                                | `INFO`                                                | Nej      |
| `CICERO_URL`                 | URL for Cicero-server                                                      | `CICERO_SERVER_HERE`                                  | Nej      |
| `CITIZEN_LOGIN_API_VALIDATOR`| Validator for citizen login API                                            | `system.utils.always_validate_citizen`               | Nej      |
| `USE_X_FORWARDED_HOST`       | Aktiverer brug af `X-Forwarded-Host` header bag proxy                      | `True`                                                | Nej      |
| `SECURE_PROXY_SSL_HEADER`    | Header til at indikere SSL bag proxy                                       | `('HTTP_X_FORWARDED_PROTO', 'https')`                | Nej      |
| `HTTPS_GUARANTEED`           | Aktiverer middleware for behandling af HTTP som HTTPS bag en proxy. Sæt til `true` hvis du er bag en reverse proxy, der håndterer SSL. | `false`                                               | Nej      |


---

### On premice drift
OS2BorgerPC Admininstartionssitet egener sig meget fint til hjemtagelse. Som regel er det ret få medarbejdere der skal tilgå systemet, og man kan derfor vælge at placere serveren på et internt netværk frem for internettet. Arbejdes der hjemme kan sitet evt. nås via VPN. Det gør sikkerheden lettere at håndtere.

Nedetid på OS2BorgerPC Administrationssitet påvirker ikke BorgerPC-maskinerne. De kører fint videre, selvom serveren ikke er tilgængelig. Skulle serveren drille en dag hvor jeres system administrator holder fridag, mærkes det ikke på biblioteket, i jobcenteret eller hvor ellers jeres BorgerPC maskinerne står.

Sønderborg Kommune har selv hostet OS2BorgerPC Administrationssitet i 5 år med gode erfaringer.

### Automatiserede Jobs (Cron Jobs)
Cron er en facilitet indbygget i Ubuntu ,som kan bruges til at planlægge kørsler af jobs.

På et OS2BorgerPC Administrationssite er der to jobs, der skal køres regelmæssigt:
- Et der udsender email notifikationer ved sikkerhedshændelser
- Et der rydder op i forældede data i databasen

2. Gå ind i crontab hvor cronjobs registreres:
```bash
crontab -e
```
Måske bliver du bedt om at vælge, hvilken tekst editor du vil benytte. Vælg Nano, da den er mest brugervenlig.

3. 
Indsæt følgende linjer i crontab:

HUSK! Udskift `demo.os2borgerpc.dk` med dit eget domænenavn:

```bash
# Run check_notifications every 10 minutes
*/10 * * * * curl http://demo.os2borgerpc.dk:8080/jobs/check_notifications -f 

# Run clean_up_database once a week (Sunday at midnight)
0 0 * * 0 curl http://demo.os2borgerpc.dk:8080/jobs/clean_up_database -f 

```
Har du brug for at køre cron jobbene manuelt kan det gøres via kommandoen:
```bash
task cron
```

### Persistens og backup

For at sikre, at scripts og andre uploads bevares mellem genstarter og ved opgradering gemmes de på et persistent volume, der hedder `admin-media`.

Volume data ligger på denne sti. Stien kan variere lidt alt efter hvordan docker blev installeret.
```bash
/var/lib/docker/volumes/os2borgerpc-admin-site-deployment_admin-media
```

Tilsvarende ligger databasen på et persistent volume, der hedder `postgres-data`.
```bash
/var/lib/docker/volumes/os2borgerpc-admin-site-deployment_postgres-data
```
Man kan lave et database dump via task-værktøjet:
```bash
task db_dump
```

Ønsker man daglige db-dumps til backup formål, kan et cron-job opsættes.

HUSK! Tilret stien hen til installationsmappen. Udskift `mitbrugernavn` med dit eget.

```bash
0 2 * * * cd /home/mitbrugernavn/os2borgerpc-admin-site-deployment && task backup_db
0 2 * * * find /home/mitbrugernavn/os2borgerpc-admin-site-deployment -mtime +10 -type f -delete
```

Eksemplet her laver et db_dump hver nat kl. 02:00. Samtidig slettes db_dumps der er ældre end 10 dage.


### Globale Scripts
OS2BorgerPC Admin fødes uden globale scripts. I forbindelse med opstart udfyldes globale scripts med indholdet af [os2borgerpc-core-scripts](https://github.com/OS2borgerPC/os2borgerpc-core-scripts/releases). 

Hvilken version af script-pakken, der indlæses under opstart, styres via disse to variabler:

- `CORE_SCRIPT_VERSION_TAG`: Version af de globale scripts (f.eks. `v1.0.1`).
- `CORE_SCRIPT_COMMIT_HASH`: Matchende commit-hash for versionen (f.eks. `6a96d19567bf5c002c76d16cf80f6c894c2af499`).


#### Opdatering af Globale Scripts
Vil man indlæse en nyere version af core-scripts er det så simpelt som at opdatere de to variable og genstarte.

Det kan gøres via 
1. Opdater `CORE_SCRIPT_VERSION_TAG` og `CORE_SCRIPT_COMMIT_HASH`.

Man finder commit hash øverst i release notes.
https://github.com/OS2borgerPC/os2borgerpc-core-scripts/releases

2. Genstart. F. eks. via
```bash
task stop
```
```bash
task up
```

**Bemærk:** Eksisterende scripts fjernes ikke automatisk og skal ryddes manuelt via SQL eller `/admin`.

