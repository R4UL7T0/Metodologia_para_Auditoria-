Recibir paquetes para confirmar un RCE:

```bash
sudo tcpdump -i <INTERFAZ> icmp 

sudo tcpdump -i <INTERFAZ> 'icmp and host <IP>'
```
