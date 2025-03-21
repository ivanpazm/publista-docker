#!/bin/bash
# Script para iniciar el contenedor Docker unificado

# Verificar si Docker está instalado y en ejecución
if ! docker info > /dev/null 2>&1; then
  echo "Error: Docker no está en ejecución o no está instalado."
  echo "Por favor, instala Docker Desktop e inténtalo de nuevo."
  exit 1
fi

# Iniciar el contenedor
echo "Iniciando el contenedor unificado Python 3.9 + Node.js 18..."
docker-compose -f docker-compose.unified.yml up -d --build

# Mostrar información de acceso
echo "============================================="
echo "Contenedor iniciado correctamente."
echo "Para acceder al contenedor ejecuta:"
echo "docker exec -it publista-unified bash"
echo "============================================="
echo "Python disponible en puerto 5000"
echo "Node.js disponible en puerto 9000"
echo "============================================="
