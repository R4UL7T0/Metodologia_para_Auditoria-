```bash
start                 # Ejecuta el programa y se detiene en main().
starti                # Se detiene en la primera instrucción (_start).
run (r)               # Ejecuta el programa.
continue (c)          # Continúa hasta el siguiente breakpoint.
next (n)              # Ejecuta la siguiente línea sin entrar a funciones.
step (s)              # Entra dentro de la función llamada.
finish                # Sale de la función actual.
info functions        # Listar funciones
break main            # Breakpoint en main().
break *0x4011a0       # Breakpoint en una dirección específica.
delete                # Elimina todos los breakpoints.
info breakpoints      # Lista los breakpoints activos.
context               # Vista completa (registros, stack, código, etc.).
regs                  # Muestra todos los registros.
nearpc                # Desensamblado alrededor de RIP.
hexdump 0x404000      # Dump hexadecimal de memoria.
x/20gx $rsp           # Muestra 20 valores de 8 bytes desde RSP.
telescope $rsp        # Interpreta la pila mostrando punteros.
telescope 0x404000 20 # Muestra 20 entradas desde una dirección.
stack                 # Muestra la pila.
retaddr               # Busca posibles direcciones de retorno.
info registers        # Registros de GDB.
regs                  # Registros con formato de Pwndbg.
set $rax=0            # Cambia el valor de RAX.
disassemble main      # Desensambla una función.
nearpc                # Código cercano a RIP.
chewcksec              # Protecciones (NX, PIE, Canary, RELRO...).
vmmap                 # Mapa de memoria del proceso.
xinfo 0x401000        # Información de una dirección.
elfheader             # Encabezados ELF.
search "/bin/sh"      # Busca la cadena "/bin/sh".
search 0xdeadbeef     # Busca un valor en memoria.
cyclic 200            # Genera un patrón de 200 bytes.
cyclic -l 0x6161616b  # Calcula el offset del patrón.
patch 0x401000 'nop; nop' # Reemplaza instrucciones.
patch_list                # Lista los parches aplicados.
patch_revert 0            # Revierte un parche.
info functions        # Lista funciones del binario.
info files            # Información del ejecutable.
backtrace (bt)        # Muestra la cadena de llamadas.
distance 0x401000 0x401100 # Distancia entre dos direcciones.
config                    # Configuración de Pwndbg.
theme                     # Cambia el tema.s
'''
