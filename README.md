# Publista Docker

Dockerización del proyecto publista.es con Python 3.9 y Node.js 18 en un contenedor unificado.

## Características

- Contenedor unificado con Python 3.9 y Node.js 18
- Puertos expuestos: 5000 (Python) y 9000 (Node.js)
- Montaje de volumen para acceso al código fuente
- Soporte para desarrollo interactivo

## Uso

```bash
# Iniciar el contenedor unificado
docker-compose -f docker-compose.unified.yml up -d --build

# Acceder al contenedor
docker exec -it publista-unified bash
```