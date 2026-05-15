## Instalación de entorno:

```bash
sudo git clone https://github.com/pwndbg/pwndbg

cd pwndbg

sudo ./setup.sh

gdb ./binario
```

## Escaneo:

Si el binario presenta una vulnerabilidad de desbordamiento de búfer. Se genera un patrón lo suficientemente extenso como para comprobar si el programa es capaz de gestionarlo con:

```bash
python3 -c ‘(print(”A”*200))’ 

o

/usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l 400
```

Si el programa devuelve un error “***Segmentation fault***”, se confirma la vulnerabilidad.

Luego comprobar las protecciones dentro del entorno:

```bash
checksec
```

Esto es muy importante ya que define el tipo de ataque que haremos dependiendo la seguridad del binario.

## Localización del Offset

Desde de gdb:

```bash
info frame
```

Localizo el RSP para identificar el valor del offset:

```bash
/usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -q RSP
```

Tendria que salir algo como:

```bash
[*] Exact match at offset <Numero>
```

## Payload:

Todo lo anterior se ejecuta en maquina local, para obtener una shell si el Payload es exito. Hay que usarlo en el servidor vulnerable.

Ahora conociendo el offset y las vulnerabilidades de seguridad del binario se decide el vector de ataque.
