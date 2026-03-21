Listar archivos de usuario:

```bash
find / -type f -user USER 2>/dev/null
```

Listar archivos con nombre:

```bash
find / -name 'NOMBRE*' 2>/dev/null
```

Listar archivos ocultos:

```bash
find / -type f -name  “.*” 2>/dev/null
```

## SUID

Listar permisos de usuario

```bash
find / -perm -4000  ls 2>/dev/null 
```

Listar permisos de grupo:

```bash
find / -group GRUPO 2>/dev/null
```
