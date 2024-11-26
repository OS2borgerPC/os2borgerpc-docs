---
title: Script metadata syntax
parent: Teknisk dokumentation
nav_exclude: false
---

Each OS2borgerpc script must have a corresponding metadata-file. 

The metadata-file is needed:
- to load scripts into the admin-site
- to generate the script library documentation. 

The metadata is stored in the Markdown format with a [front matter](https://jekyllrb.com/docs/front-matter/) section at the beginning. The front matter section must contain a set of variables in a YAML format.

## Markdown document requirements
The metadata document is a text file with an .md extension written in Markdown. Using the same name for the metadata-file and the script is a good idea, but not required. (F. ex. `reboot_now.md` ~ `reboot_now.sh`) 

At the top of the metadata-file there must be a front matter section containg a set of variables in the YAML format. A front matter section starts and ends with three dashes:
```
---
# Here goes the YAML
---
```

Below the front matter section you must provide a script description written using standard Markdown syntax. 

Please include:
- the use case for the script
- any technical limitations or issues
- dependencies on other scripts
- partners who have contributed to writing or testing the script

## YAML section requirements
Script metadata variables

| Variable      | Description                                                  | Required |
| ------------- | ------------------------------------------------------------ | --------- |
| `title`         | The title of the script.                                      | Required |
| `parent`        | The script category. There can be only one. Supported values are: `Browser`, `Desktop`, `Fejlfinding`, `Kiosk`, `Login`, `Lyd`, `Opgradering`, `Printer`, `Programmer`, `Sikkerhed`, `Skanner`, `System`, `Udfases`| Required |
| `source`        | The relative path to the script-file (.sh/.py) from the metadata-file.              | Required |
| `parameters`    | The list of parameters that the script expects to receive.  <br> Each parameter is described by an array of 4 key/value pairs. <br> - `name`: The name of the parameter<br>   - `type`: Supported values are `boolean`, `string`, `int`, `text_field`, `file`, `password`<br>  - `default`: Default value of the parameter. `null` if none.<br>   - `mandatory`: Required parameter? `true` or `false`  <br>  If the script expects leave the parameters-variable empty.      | Required |
| `compatibility` | Info about image and version compatibility. Supported values are: `20.04`, `22.04`, `24.04`, `BorgerPC` and `Kiosk`. More than one value can be supplied.| Optional  |
|`in_image`| Sometimes scripts get absorbed by the images, meaning that the script functionality is built into the image (borgerpc/kiosk) thereby making the script obsolete. When this happens please provide the image name and version tag here.| Optional |


