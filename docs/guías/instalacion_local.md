# 🛠️ Instalación Local

## Requisitos

- Docker + Docker Compose
- Git

## Pasos

1. Clonar el repositorio:

```bash
git clone https://github.com/tu_usuario/infraestructura-web-escalable.git
cd infraestructura-web-escalable

2. Crear el archivo de entorno:

cp .env.example .env

3. Levantar contenedores

cd docker/
docker-compose up -d
