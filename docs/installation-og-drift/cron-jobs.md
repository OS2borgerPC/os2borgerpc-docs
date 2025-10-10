---
title: "Cron-jobs"
parent: "Installation og drift"
nav_exclude: false
nav_order: 15
---

## Automatiserede Jobs (Cron Jobs)
Cron er en facilitet indbygget i Linux, som kan bruges til at planlægge kørsler af jobs.

På et **OS2BorgerPC Administrationssite** er der to vigtige jobs, der bør køre automatisk med faste intervaller:
- **check_notifications** – udsender e-mailnotifikationer ved sikkerhedshændelser
- **clean_up_database** – rydder op i forældede data i databasen

### Sådan opsætter du Cron jobs

Åbn systemets crontab, hvor planlagte jobs registreres:

```bash
crontab -e
```
Du kan blive bedt om at vælge en teksteditor. Vælg Nano, da den er enkel at bruge.

Indsæt følgende linjer nederst i crontab-filen.

```bash
# Run check_notifications every 10 minutes
*/10 * * * * curl http://demo.os2borgerpc.dk:8080/jobs/check_notifications -f 

# Run clean_up_database once a week (Sunday at midnight)
0 0 * * 0 curl http://demo.os2borgerpc.dk:8080/jobs/clean_up_database -f 
```
**Husk at udskifte** `demo.os2borgerpc.dk` med dit eget domænenavn.

---

### Kør jobs manuelt


Har du brug for at køre cron jobbene manuelt kan det gøres via kommandoen:
```bash
task cron
```