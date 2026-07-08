# Recopilación activa de información

Recolección de información sobre un objetivo determinado utilizando métodos que interactúan de manera directa con la organización, normalmente mediante el envío de trafico de red.

## Wireshark

Analiza el trafico de red.

## NMAP

Básico:

```bash
nmap -p- -Pn -sS —min-rate 5000 —open IP -n 

nmap -sCV -pPORTS IP
```

Para reportes:

```bash
nmap -p<PUERTOS>-sCV <IP> -oX <NOMBRE_ARCHIVO>

xsltproc <nombre_archivo> -o archivo.html
```

Avanzado:

```bash
# Escaneo silencioso a puerto
nmap -sn -n -PS<PUERTO> IP 

#Escaneo silencioso a 5 puertos (Arriba de 5 ya es facilmente detectable) 
sudo nmap -sS -n --top-ports 5 IP

# Fragmentación de paquetes para evadir firewalls
sudo nmap -sS -n -ff -p<PUERTO> IP
```
