`checksec --file=archivo`

### . **RELRO (Relocation Read-Only)**

- **Partial RELRO**:
    - **La sección GOT (Global Offset Table) es modificable**.
    - **Vulnerabilidad**: Permite ataques **GOT overwrite** (un atacante puede redirigir llamadas a funciones como `strcpy` o `printf` a código malicioso).
    - *Ejemplo*: Si controlas un desbordamiento de búfer, puedes sobrescribir `printf@GOT` para que apunte a `system` y ejecutar comandos

**2. Stack Canary**

- **No canary found**:
    - **No hay protección contra buffer overflows en la pila (stack)**.
    - **Vulnerabilidad crítica**: Permite **desbordamientos de búfer (stack smashing)** sin detección.
    - *En tu caso*: El segmentation fault ocurrió porque pudiste sobrescribir la dirección de retorno (gracias a la ausencia de canary).

**3. NX (No-eXecute)**

- **NX enabled**:
    - **La pila (stack) no es ejecutable**.
    - **Implicaciones**:
        - No se puede ejecutar *shellcode* inyectado en la pila.
        - *Alternativas de ataque*: Deberás usar técnicas como **Return-Oriented Programming (ROP)** o modificar datos críticos (como hiciste con `key`).

**4. PIE (Position Independent Executable)**

- **PIE enabled**:
    - **Las direcciones de memoria del binario son aleatorizadas** (ASLR en el código).
    - **Implicaciones**:
        - Las direcciones de funciones/variables cambian en cada ejecución.
        - *Dificulta*: Ataques que requieren direcciones fijas (e.g., saltar a `main()` o usar gadgets ROP).
        - *En tu caso*: El exploit debe ser independiente de direcciones o requerir filtraciones de memoria.

**5. FORTIFY Source**

- **FORTIFY desactivado** (`No` y `0 Fortified`):
    - **No se verifican los usos peligrosos de funciones como `memcpy` o `printf`**.
    - **Riesgo**: Permite desbordamientos en funciones vulnerables sin detección.
    - *Ejemplo*: Un `char buffer[64]` con `strcpy(buffer, input)` no verifica límites.

**6. RPATH/RUNPATH**

- **Ausentes** (`No RPATH`, `No RUNPATH`):
    - No hay rutas inseguras para carga de librerías.
    - *Positivo*: Elimina ataques como **hijacking de librerías**.

**7. Símbolos**

- **44 Symbols**:
    - Los nombres de funciones/variables están incluidos.
    - *Facilita*: Ingeniería inversa y depuración (no afecta la explotación).
