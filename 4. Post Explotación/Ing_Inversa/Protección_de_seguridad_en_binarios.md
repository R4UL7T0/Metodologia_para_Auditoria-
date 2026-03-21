## **Protecciones de seguridad** que pueden estar activas en el binario.

- **File**: Es el **nombre del archivo** binario que estás analizando (`bs64`).

- **Arch**: La **arquitectura** del binario es **amd64** (es decir, 64 bits).

**RELRO** es una protección de seguridad que ayuda a evitar ciertos tipos de ataques, como **la escritura en las direcciones de memoria que deberían ser solo de lectura**.

- **Partial RELRO**: El binario tiene **protección parcial**. Esto significa que se protege solo una parte de las secciones de
memoria, pero no todo. No es la forma más segura, pero es algo mejor que no tener RELRO en absoluto. El **Full RELRO** proporciona una protección más fuerte contra ciertos ataques de escritura en memoria.

El **canary** es una técnica que ayuda a prevenir **desbordamientos de buffer**
 al insertar un valor secreto antes de la dirección de retorno en la 
pila. Si un atacante intenta sobrescribir la dirección de retorno, el 
canario cambiará, lo que provoca que el programa termine (o se comporte 
de manera inesperada).
**No canary found**: **El binario no tiene protección de canario**. Esto hace que sea más vulnerable a ataques de desbordamiento de buffer, ya que no se está protegiendo explícitamente la pila.

**NX (No eXecute)** es una protección que 
asegura que ciertas áreas de la memoria (como la pila) no se pueden 
ejecutar como código. Esto evita que los atacantes ejecuten código 
arbitrario en la pila, como lo harían en un ataque de **buffer overflow**.

- **NX enabled**: **NX está habilitado**, lo que significa que la pila y otras regiones de la memoria no pueden ser
ejecutadas, haciendo que ciertos tipos de explotación, como la ejecución de código malicioso desde la pila, sean más difíciles.

**PIE (Position Independent Executable)** es una característica que hace que el binario sea más difícil de predecir. Cuando **PIE está habilitado**, el binario se carga en **direcciones aleatorias de la memoria** cada vez que se ejecuta, lo que hace que la explotación de vulnerabilidades sea más difícil.

- **No PIE**: **No está habilitado PIE**, lo que significa que el binario se carga en una dirección fija (en este caso, `0x400000`). Esto hace que sea más fácil para un atacante predecir la ubicación de
funciones y otros componentes importantes en la memoria.

Los **binarios "stripped"** son aquellos a los que se les han eliminado los **símbolos de depuración**
 (como nombres de funciones y variables). Esto hace que el binario sea 
más difícil de analizar y explotar porque se pierde información útil.

- **No**: **El binario no está despojado**
de símbolos, lo que significa que tiene información de depuración (por
ejemplo, nombres de funciones). Esto puede ser útil para la explotación y el análisis.
