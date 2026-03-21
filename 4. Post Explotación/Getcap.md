Comando para ver qué capacidades especiales tiene asignados un archivo ejecutable. Permiten a un porgrama realizar acciones privilegiadas sin necesidad de ser root. Por ejemplo: abrir puertos bajos, manipular la red, leer la hora del sistema, 

```bash
getcap -r / 2>/dev/null
```
