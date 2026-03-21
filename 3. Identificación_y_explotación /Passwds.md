## Básico a contraseñas:

```bash
hydra -l USER -P /etc… ssh://IP -I -f 
```

## Básico a usuarios:

```bash
hydra -L /usr/share/seclists/Usernames/xato-net-10-million-usernames.txt -p CONTRASEÑA -f ssh://172.17.0.2
```

## Para login.php

```bash
hydra -l USER -P archivo.txt<IP> http-post-form  "/login.php:username=^USER^&password=^PASS^:Invalid credentials”
```

## mp64

Relleno de contraseñas:

```bash
mp66 ‘?l?l<RESTO_DE_PASSWD>’ (?l en los caracteres para rellenar)
```
## Cewl

Herramienta para crear diccionarios con las palabras principales de la página web
```bash
cewl http://IP/ -w archivo.txt
```
## Hashcat
Herramienta para recuperar contraseñas
```bash
hashcat -m 3200 hash.txt /usr/..rockyou
```
