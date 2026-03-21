## Teniendo un archivo cifrado con contraseña 
```bash
zip2john archivo.zip >> hash.txt

pdf2john archivo.pdf > hash
```
```bash
john —wordlist=/usr/share/seclists/Passwords/xato-net-10-million-passwords-100000.txt hash

john —wordlist=/ —format=Raw-MD% hash.txt
```

## Instalar keepassxc para ver bases de datos :

```bash
keepass2john archivo-kdbx > hash.txt
```
