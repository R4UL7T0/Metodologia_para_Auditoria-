La **Return-Oriented Programming (ROP)** es una técnica avanzada de explotación usada para ejecutar código sin inyectar un programa nuevo en memoria. Se utiliza principalmente para evadir protecciones como **DEP/NX (Data Execution Prevention / No-eXecute)**.

## Idea principal

En lugar de meter código malicioso completo, el atacante reutiliza pequeños fragmentos de código que ya existen llamados gadgets dentro del programa o sus librerías.

Un gadget es una secuencia de instrucciones que termina con `ret`. La instrucción `ret` extrae la siguiente dirección de la pila y salta a ella. Al diseñar cuidadosamente nuestra carga útil, podemos ejecutar una cadena de gadgets:

```
+------------------+
| Gadget 1 address |  --> ret jumps here
+------------------+
| Gadget 2 address |  --> Gadget 1's ret jumps here
+------------------+
| Gadget 3 address |  --> Gadget 2's ret jumps here
+------------------+
```

Cómo identificar problemas de alineación?

Si el exploit falla con un error de segmentación dentro de una función de libc (como puts o printf) en lugar de en la dirección de destino, se  agrega o elimina un gadget ret.
