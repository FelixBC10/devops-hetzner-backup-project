# Migración de WordPress: Hetzner Cloud a VirtualBox local

## 1. Research (Investigación y Planificación)
- **Entorno Origen:** Hetzner Cloud (`wordpress.multinomial.se`)[cite: 5, 6, 7].
- **Entorno Destino:** VirtualBox (Ubuntu 24.04 local).
- **Estrategia:** Migración a nivel de archivos y base de datos utilizando `tar` y `mysqldump` para asegurar la portabilidad e independencia del hipervisor.

## 2. Implementation (Implementación)
- Configuración del control de versiones con Git y repositorio remoto en GitHub (`devops-hetzner-backup-project`).
- Gestión de credenciales mediante llaves SSH y archivos de configuración segura (`hetzner_key`).

## 3. Completion (Resultados y Demostración)
- Documentación del proceso completo de respaldo, transferencia y restauración en el entorno local.
- Grabación de la demostración en video (4 minutos).

## 4. Problems and Solutions (Problemas y Soluciones)
- **Problema:** Conexión SSH bloqueada en el puerto 22 (`Connection timed out`) al intentar acceder a `wordpress.multinomial.se`[cite: 5, 6, 7] debido a restricciones de la red de salida.
- **Solución:** Diagnóstico mediante verbosidad (`-v`) y pruebas de puertos (`nc`), documentando el bloqueo del firewall de red como incidencia del entorno de red local.
