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
Der er nogle præ-installations krav, der skal være opfyldt. Læs mere om præ-installationskravene her.

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

### Præ-installationskrav
Lokale systemindstillinger sættes i filen `.env`.

Kopier filen `.env.example.` til `.env`.

```bash
cp .env.example .env
```

Åbn `.env` i en text editor som f. eks. `nano`.

```bash
nano .env
```

Af sikkerhedshensyn opdaterer ALTID disse indstillinger med dine egne værdier:
- `DOMAIN`: Dit domænenavn som skal matche dit SSL certifikat
- `DB_PASSWORD`: Angiv et stærkt password
- `SECRET_KEY`: Angiv en stærk nøgle.


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
| `DEBUG`                      | Aktiverer debug-tilstand i Django                                          | `True`                                                | Nej      |
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


---
## Introduktion


**OS2BorgerPC admin-site** er designet som et Docker-image. Bygning og publicering håndteres af en [GitHub-pipeline](https://github.com/OS2borgerPC/os2borgerpc-admin-site/actions/workflows/docker-image.yml), som uploader Docker-image'et til [GitHub Packages](https://github.com/orgs/OS2borgerPC/packages?repo_name=os2borgerpc-admin-site). Her kan du finde image-tags og URLs.

Konfiguration sker via miljøvariabler (beskrevet nedenfor) og omfatter desuden specifikationer for driftskrav. En `compose.yaml`-fil leveres som reference til udvikling og konfiguration.

**Bemærk:** `compose.yaml` er ikke opdateret til at understøtte de nye cron job-endpoints. Til produktion anbefales brug af de nye cron job endpoints.

---

## Drift Anbefalinger

For at understøtte leverandører og kommuner i at sætte OS2BorgerPC admin-site i drift samt håndtere opgraderinger anbefales følgende fremgangsmåde:

### Drift Opsætning
1. **Undgå brug af `docker-compose` i produktion:**
   - `docker-compose` er velegnet til udvikling, men anbefales ikke til produktion.
   - Brug en orkestreringsløsning som Kubernetes eller Docker Swarm til at håndtere containere.

2. **Ønskes brug af docker-compose alligevel eller sammen med Docker Swarm:**
   - Lav ny docker-compose fil med udgangspunkt i `compose.yaml`
   - Fjern unødvendige services som `frontend` og tilpas `cron-service` som beskrevet nedenfor.
   - Konfigurer admin-site til at pege på et specifikt Docker-image-tag, f.eks.:
     ```yaml
     image: ghcr.io/os2borgerpc/os2borgerpc-admin-site:<specific-tag>
     ```
   - Indstil miljøvariabler i henhold til dokumentationen.

3. **Volumenhåndtering:**
   - Sørg for at mount persistente volumes til `/media` for at sikre, at scripts og andre uploads bevares mellem genstarter.
   - Eksempel:
     ```yaml
     volumes:
       - admin-media:/media
     ```

4. **Sikkerhed:**
   - Angiv en stærk `SECRET_KEY` i miljøvariablerne.
   - Begræns `ALLOWED_HOSTS` til de domæner, der skal have adgang til admin-site.

### Opgradering af Admin-Site
1. **Forberedelse:**
   - Gennemgå release-notes for den nye version.
   - Test opgraderingen i et udviklings- eller staging-miljø.

2. **Opdatering:**
   - Opdater Docker-image-tagget til den ønskede version i din orkestreringsopsætning.
   - Genstart admin-site-containere for at anvende ændringerne.

3. **Validering:**
   - Bekræft, at opgraderingen er succesfuld ved at teste kernefunktionalitet.
   - Tjek logfiler for fejl eller advarsler.

### Fejlfinding
- Hvis der opstår problemer under opgradering, kan du rulle tilbage til det tidligere Docker-image-tag.
- Kontroller logfiler i admin-site-containere for detaljerede fejlmeddelelser.

---

## Bootstrapping
For at initialisere admin-site og få adgang til Djangos administrationsside (`<base URL>/admin`), skal en admin-bruger oprettes med følgende miljøvariabler:

- `ADMIN_USERNAME`
- `ADMIN_PASSWORD`
- `ADMIN_EMAIL`

**Bemærk:** `ADMIN_EMAIL` anvendes af Djangos indbyggede brugerhåndtering. Den oprettede admin-bruger kan også administrere sites og klienter.

---

## Database
Konfiguration af databaseforbindelsen sker via følgende miljøvariabler:

- `DB_HOST`
- `DB_PORT`
- `DB_USER`
- `DB_PASSWORD`
- `DB_NAME`

Se `compose.yaml` for eksempler.

---

## Scripts
Scripts gemmes i Djangos mediamappe (`/media`). For at sikre persistens mellem genstarter skal en persistent volume mountes på denne sti.

### Globale Scripts
Globale scripts downloades fra [OS2's core-script repository](https://github.com/OS2borgerPC/os2borgerpc-core-scripts) under opstart. Konfiguration sker med:

- `CORE_SCRIPT_VERSION_TAG`: Version af de globale scripts (f.eks. `v0.1.5`).
- `CORE_SCRIPT_COMMIT_HASH`: Matchende commit-hash for versionen (f.eks. `5340bdc128e2de8c01def5dc50e8680399631f53`).

#### Sådan Finder du Commit-Hash
1. Gå til [commit-historik](https://github.com/OS2borgerPC/os2borgerpc-core-scripts/commits/main).
2. Find det commit, der matcher versionstagget.
3. Kopiér commit-hash.

#### Opdatering af Globale Scripts
1. Opdater `CORE_SCRIPT_VERSION_TAG` og `CORE_SCRIPT_COMMIT_HASH`.
2. Genstart containeren.

**Bemærk:** Eksisterende scripts fjernes ikke automatisk og skal ryddes manuelt via SQL eller `/admin`.

---

## Cron Jobs
Admin-site understøtter to cron jobs:

1. **`check_notifications`**: Sender notifikationer. *(Forslag: `*/10 * * * *`)*
2. **`clean_up_database`**: Rydder op i databasen. *(Forslag: `0 19 * * 6`)*

### Kørsel af Cron Jobs
Via HTTP:
```bash
curl http://admin-site-url:8080/jobs/check_notifications -f
curl http://admin-site-url:8080/jobs/clean_up_database -f
```

Manuelt fra container:
```bash
/code/admin_site/manage.py check_notifications
/code/admin_site/manage.py clean_up_database
```

---

## Diverse Konfigurationsparametre

- **`HTTPS_GUARANTEED`**: 
  - true | false (default: false).
  - Aktiverer middleware for behandling af HTTP som HTTPS bag en proxy.

- **`PC_IMAGE_RELEASES_URL`** og **`KIOSK_IMAGE_RELEASES_URL`**:
  - URLs til download af BorgerPC ISO images.

---
