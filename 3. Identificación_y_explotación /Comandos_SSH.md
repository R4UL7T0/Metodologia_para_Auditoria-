# Conexión básica

```bash
ssh usuario@host
ssh -p 2222 usuario@host
ssh usuario@host comando
ssh-keygen -R IP && ssh USER@IP
```

# Gestión de claves

```bash
ssh-keygen
ssh-keygen -t ed25519
ssh-keygen -t rsa -b 4096
ssh-copy-id usuario@host
```

# Transferencia de archivos

```bash
scp archivo.txt usuario@host:/ruta/
scp usuario@host:/ruta/archivo.txt ./
rsync -avz archivo.txt usuario@host:/ruta/
```

# Túneles y redirecciones

```bash
ssh -L 8080:localhost:80 usuario@host
ssh -R 9090:localhost:22 usuario@host
ssh -D 1080 usuario@host
```

# Opciones útiles

```bash
ssh -v usuario@host
ssh -q usuario@host
ssh -X usuario@host
ssh -o StrictHostKeyChecking=no usuario@host
```
