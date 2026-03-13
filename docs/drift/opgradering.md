---
title: "Opgradering"
parent: "For driftsleverandører"
nav_exclude: false
nav_order: 10
---
<p class="fs-6 fw-300">
Opgradering er nemt – funktionen er indbygget i installationspakken.  
Nedenfor finder du en trinvis forklaring på, hvordan processen fungerer.
</p>

---

## 1. Kontroller din nuværende version

Når OS2BorgerPC Adminsite installeres via `task install`, oprettes der en fil med navnet `VERSION`.  
Denne fil indeholder det versionsnummer, du aktuelt kører med.

---

## 2. Angiv den version, du vil opgradere til

Før du kører `task upgrade`, skal du opdatere variablen `VERSION` i filen `.env` til det ønskede versionsnummer.  
Du kan finde en oversigt over alle tilgængelige versioner her:

👉 [Releases – OS2BorgerPC Admin](https://github.com/OS2borgerPC/os2borgerpc-admin-site/releases)

---

## 3. Tag backup af filer og database

Inden du foretager en opgradering, bør du altid sikre dig, at du har en opdateret **backup** af både filer og database.

[Læs mere om backup her.]()

---

## 4. Kør opgraderingen

Kør følgende kommando i terminalen:

```bash
task upgrade
```




