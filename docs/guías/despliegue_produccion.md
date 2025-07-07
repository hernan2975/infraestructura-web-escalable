
# 🚀 Despliegue en Producción

## Requisitos

- Servidor Linux (Ubuntu 22.04)
- Acceso SSH
- Docker, Ansible instalados

## Pasos

1. Configurar inventario en `ansible/inventory/hosts.ini`
2. Verificar conectividad SSH
3. Ejecutar el despliegue:

```bash
ansible-playbook ansible/playbooks/deploy_app.yml -i ansible/inventory/hosts.ini
