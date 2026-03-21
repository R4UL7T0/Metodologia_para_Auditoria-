## Base64/32

Descifrar:

```bash
echo “texto” | base64 -d
```

Encriptar:

```bash
echo -n ‘texto” | base64 

echo -e “texto” | base32
```

## Hexadecimal

descifrar:

```bash
echo “texto” | xxd -r -p
```

Encriptar:
```bash
echo -n “texto” | xxd -p
```
