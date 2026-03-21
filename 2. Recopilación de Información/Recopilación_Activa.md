# Recopilación activa de información

Recolección de información sobre un objetivo determinado utilizando métodos que interactúan de manera directa con la organización, normalmente mediante el envío de trafico de red.

## Wireshark

Analiza el trafico de red.

## NMAP

Sudo nmap -sn IP : Identifica si los nodos de red están corriendo o no.

Sudo nmap  -PS IP : Lista los puertos de la maquina destino. (-p elige un puerto especifico y genera menos trafico de red)

Sudo nmap -sS IP : Analiza los puertos del sistema, haciendo peticiones a cada uno de manera individual

nmap -p- -Pn -sS —min-rate 5000 —open IP -n 

nmap -sCV -pPORTS IP
