## Steghide:

```bash
steghide extract -sf archivo.jpg

cat /usr/share/wordlists/rockyou.txt | xargs -I {} -P 4 sh -c 'steghide extract -sf archivo.jpg -p "{}" -xf output_{}.txt 2>/dev/null && echo "Contraseña encontrada: {}"'

```
## Stegseek
```bash
stegseek archivo.jpg
```
## Exiftool:

```bash
exiftool imagen.jpg (extrae metadatos)
```
