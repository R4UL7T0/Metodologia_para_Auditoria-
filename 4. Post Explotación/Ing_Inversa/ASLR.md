## ¿Qué es?

La aleatorización del espacio de direcciones carga las bibliotecas en direcciones aleatorias cada vez que se ejecuta un programa. Con ASLR activado, primero necesitaríamos filtrar la dirección de libc antes de calcular dónde se encuentran system() y "/bin/sh". Dado que ASLR está desactivado (valor 0), las direcciones son predecibles.

## ¿Por qué afecta a ROP?

ROP depende de conocer direcciones de gadgets y funciones.

Si las direcciones cambian aleatoriamente:

- la cadena ROP falla
- los saltos apuntan a lugares incorrectos
- el programa crashea

Por eso ASLR es una defensa importante contra exploits modernos.

Se verifica con el siguiente comando:

```bash
USER@SERVER:~$ cat /proc/sys/kernel/randomize_va_space
<VALOR>
```

| Valor | Significado |
| --- | --- |

| `0` | ASLR desactivado |
| --- | --- |

| `1` | Randomización parcial |
| --- | --- |

| `2` | Randomización completa |
| --- | --- |
