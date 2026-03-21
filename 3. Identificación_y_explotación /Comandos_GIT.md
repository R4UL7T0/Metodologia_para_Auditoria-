```bash
git config --global [user.name](http://user.name/) "Tu Nombre"   # Configura tu nombre de usuario global
git config --global user.email "[tu@email.com](mailto:tu@email.com)"   # Configura tu correo electrónico global
git config --list   # Muestra la configuración actual de Git
```

```bash
git init   # Inicializa un nuevo repositorio en la carpeta actual
git clone <url>   # Clona un repositorio remoto en tu máquina
```

```bash
git status   # Muestra el estado de los archivos (modificados, en staging, etc.)
git add <archivo>   # Añade un archivo al área de preparación (staging)
git add .   # Añade todos los archivos modificados
git commit -m "mensaje"   # Crea un commit con los cambios preparados
git commit -am "mensaje"   # Añade y hace commit de archivos ya rastreados
```

```bash
git log   # Muestra el historial completo de commits
git log --oneline   # Muestra el historial resumido en una línea por commit
git diff   # Muestra diferencias entre archivos modificados y el último commit
git diff --staged   # Muestra diferencias entre staging y el último commit
```

```bash
git branch   # Lista las ramas existentes
git branch <nombre>   # Crea una nueva rama
git checkout <rama>   # Cambia a otra rama
git checkout -b <rama>   # Crea y cambia a una nueva rama
git merge <rama>   # Fusiona una rama en la actual
git branch -d <rama>   # Elimina una rama
```

```bash
git remote -v   # Lista los remotos configurados
git remote add origin <url>   # Añade un remoto llamado origin
git push origin <rama>   # Envía commits al remoto
git pull origin <rama>   # Descarga y fusiona cambios del remoto
git fetch   # Descarga cambios sin fusionarlos
```

```bash
git reset --hard <commit>   # Regresa al estado exacto de un commit
git revert <commit>   # Crea un nuevo commit que revierte uno anterior
git stash   # Guarda temporalmente cambios sin hacer commit
git stash pop   # Recupera los cambios guardados con stash
```
