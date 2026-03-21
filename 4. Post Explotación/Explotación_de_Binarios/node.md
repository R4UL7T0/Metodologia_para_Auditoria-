```bash
sudo -u USER node -e 'require("child_process").spawn("/bin/sh", {stdio: [0, 1, 2]})'
bash
```
