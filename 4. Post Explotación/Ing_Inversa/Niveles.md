## 1. Básico 

Siempre empezar cualquier análisis de binario con:

```bash
strings -c 10 <BINARIO>

# y

binwalk -Me <BINARIO>
```

Con eso se extrae metadatos y cómo funciona el código. También poder ver si dentro hay algún gestor de archivos o boot loader.

## 2. Ver el código máquina (Static Analysis)

Hay varias maneras:

```bash
objdump -d -Mintel ./<BINARIO> | less
# o
ghidra
```

Esto para conocer que hace con código hexadecimal o C.

## 3. Ver que hace ejecutando el programa ( Dynamic Analysis)

```bash
gdb ./<BINARIO>
```

Revisar la seguridad:

```bash
(gdb) checksec
```

## 4. Convertir el programa a un problema matemático (Symbolic Execution)

Con el fin de ver si el programa puede o no ejecutarse.

Hay una librería open source llamada “angr”:

```bash
https://angr.io
```

Usualmente se crean scripts con los operadores lógicos necesarios. 

## 5. Encontrar bugs en Software real.
Después de encontrar algún archivo o ejecutable dentro del sistema buscando escalar privilegios, Puede que realizar ing. inversa también ya que puede revelar información sobre alguna vulnerabilidad del sistema. 
