```bash
puttygen -t rsa -o id_rsa -O private-openssh

sudo puttygen id_rsa -o /root/.ssh/authorized_keys -O public-openssh

chmod 600 id_rsa && ssh -i id_rsa root@127.0.0.1
```
