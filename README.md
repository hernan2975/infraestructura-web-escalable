# 🌐 Infraestructura Web Escalable

[![CI/CD](https://img.shields.io/github/actions/workflow/status/tu_usuario/infraestructura-web-escalable/deploy.yml?style=flat-square)](./ci-cd/github-actions)
[![License: MIT](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Ubuntu](https://img.shields.io/badge/platform-Ubuntu%2022.04-blue.svg)](https://ubuntu.com/)
[![Docker](https://img.shields.io/badge/containerized-Docker-blue.svg)](https://www.docker.com/)

---

## 📚 Tabla de Contenidos

- [🎯 Objetivo](#-objetivo)
- [🧱 Arquitectura del Sistema](#-arquitectura-del-sistema)
- [🛠️ Stack Tecnológico](#-stack-tecnológico)
- [⚙️ Despliegue Local](#-despliegue-local)
- [🚀 CI/CD y Despliegue](#-cicd-y-despliegue)
- [🧪 Monitoreo & Backups](#-monitoreo--backups)
- [📂 Estructura del Repositorio](#-estructura-del-repositorio)
- [🤝 Contribuciones](#-contribuciones)
- [📄 Licencia](#-licencia)

---

## 🎯 Objetivo

Diseñar y mantener una infraestructura robusta, contenerizada y automatizada capaz de alojar aplicaciones web de alto tráfico, garantizando escalabilidad horizontal, alta disponibilidad y facilidad operativa mediante herramientas modernas de DevOps.

---

## 🧱 Arquitectura del Sistema

![Arquitectura del Sistema](docs/arquitectura.png)

El sistema se basa en los siguientes componentes:

- Balanceadores de carga con NGINX (modo activo/pasivo)
- Backend y servicios contenerizados con Docker
- Clúster de base de datos PostgreSQL con replicación
- Automatización con Ansible y scripts Bash
- Monitoreo activo con Prometheus y visualización en Grafana
- Pipeline CI/CD para despliegues consistentes

---

## 🛠️ Stack Tecnológico

| Componente     | Tecnología         |
|----------------|--------------------|
| OS Base        | Ubuntu Server 22.04 |
| Contenedores   | Docker + docker-compose |
| Base de datos  | PostgreSQL 15 con replicación |
| Balanceo       | NGINX |
| Automatización | Ansible + Bash |
| Orquestación   | Proxmox VE |
| Monitoring     | Prometheus + Grafana |
| CI/CD          | GitHub Actions |

---

## ⚙️ Despliegue Local

```bash
git clone https://github.com/tu_usuario/infraestructura-web-escalable.git
cd infraestructura-web-escalable/docker
docker-compose up -d
🔐 Asegúrate de copiar y editar los archivos .env.example antes del despliegue.

🚀 CI/CD y Despliegue
Este proyecto incluye un flujo CI/CD con GitHub Actions:

Linter y test de sintaxis

Validación de configuración Ansible y Docker

Despliegue automatizado en servidor de staging o producción vía SSH

Ver detalles en: ci-cd/github-actions/deploy.yml

🧪 Monitoreo & Backups
Backups automáticos diarios de PostgreSQL almacenados localmente

Prometheus recolectando métricas de CPU, RAM, uso de contenedores, etc.

Grafana con dashboards preconfigurados para visibilidad operativa

📂 Estructura del Repositorio
plaintext
├── ansible/
├── docker/
├── nginx/
├── postgres/
├── scripts/
├── monitoring/
├── ci-cd/
├── docs/
├── .gitignore
├── LICENSE
└── README.md
🤝 Contribuciones
Este repositorio acepta mejoras, fixes y sugerencias. Ver CONTRIBUTING.md para saber cómo participar.

📄 Licencia
Distribuido bajo la Licencia MIT. Libre de ser reutilizado, modificado y compartido bajo los términos especificados.
