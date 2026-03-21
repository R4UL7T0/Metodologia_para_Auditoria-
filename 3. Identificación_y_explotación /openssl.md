## Con un archivo tipo private_key.pem:

```bash
 openssl pkeyutl -decrypt -in private.txt -out decrypted.txt -inkey private_key.pem
```
