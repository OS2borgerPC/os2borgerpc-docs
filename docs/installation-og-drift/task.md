### Task

OS2BorgerPC installationspakken bruger værktøjet [Task](https://taskfile.dev/) (ofte kaldet go-task), til at scripte nogle opgaver vedr. opsætning, vedligeholdelse og drift af applikationen. Du skal selv sørge for at Task er installeret på serveren.

Link til [**Task installationsguide**](https://taskfile.dev/#/installation). 

I OS2BorgerPC Admin bruges **Task** til at 
- installere
- opgradere
- tage backup af databasen

Denne kommando udskriver en liste over alle tilgængelige *tasks*:
```
task
```
Her kan man se listen. 
```bash
Available tasks:
task install - Install OS2BorgerPC Adminsite
task upgrade - Upgrade OS2BorgerPC Adminsite to a newer version
task start - Start the application by bringing all containers up
task stop - Stop the application by stopping all containers
task reinstall - Reinstall the application. WARNING Deletes volumes and containers
task down - Remove the application. Deletes all volumes and containers
task cron - Run cron jobs manually
task backup_db - Perform a database dump

```