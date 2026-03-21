## Quitar la IP actual: 
```bash
sudo ip address del IP_actual /16 dev docker0
```
## Agregar la nueva:
```bash
sudo ip address add IP_nueva /16 dev docker0
```
