# Migración y Respaldo de WordPress: Hetzner Cloud a VirtualBox local

## 1. Research (Investigación y Planificación)
- **Entorno Origen:** Hetzner Cloud (`wordpress.multinomial.se`)[cite: 5, 6, 7].
- **Entorno Destino:** VirtualBox (Ubuntu local).
- **Estrategia:** Automatización de respaldos mediante scripts de Bash, compresión `tar` y volcados de base de datos `mysqldump`.

## 2. Implementation (Implementación)
- Configuración del control de versiones con Git y repositorio remoto en GitHub.
- Creación de la estructura del proyecto y script automatizado de respaldo (`backup-config/backup-script.sh`).
- Gestión de llaves SSH y seguridad de conexiones.

## 3. Completion (Resultados y Demostración)
- Scripts de respaldo estructurados y listos para ejecución local y remota.
- Documentación del proceso de migración paso a paso.

## 4. Problems and Solutions (Problemas y Soluciones)
- **Problema:** Conexión SSH bloqueada en el puerto 22 (`Connection timed out`) al intentar acceder a `wordpress.multinomial.se`[cite: 5, 6, 7] debido a restricciones de la red de salida en la ubicación actual.
- **Solución:** Diagnóstico con herramientas de red (`nc`, `-v`) y documentación del incidente, pivotando a la simulación y prueba de scripts de respaldo en el entorno local de VirtualBox.
