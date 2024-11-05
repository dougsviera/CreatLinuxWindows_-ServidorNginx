# Monitoramento do Servidor Nginx no WSL (Windows Subsystem for Linux)

Este projeto implementa um monitoramento automatizado para o servidor Nginx em uma instalação Ubuntu no Windows, utilizando o WSL (Windows Subsystem for Linux).

## Pré-requisitos
- Windows 10/11 com WSL instalado e Ubuntu 20.04 ou superior.
- Conexão ativa à internet para instalar pacotes.

## Etapas de Instalação
### 1. Ativar o WSL
- Execute `wsl --install` no PowerShell com permissões de administrador.

### 2. Instalar o Ubuntu 20.04 LTS ou superior
- Baixe o Ubuntu pela Microsoft Store e conclua a configuração inicial.

### 3. Instalar e configurar o Nginx
- Execute `sudo apt update && sudo apt install nginx` e inicie o Nginx.

### 4. Configurar o Script de Monitoramento
- Crie o script `monitor_nginx.sh` no diretório `~/monitoramento_nginx`.
- Execute `mkdir monitoramento_nginx` e depois `vi monitor_nginx.sh`.
- Adicione permissão de execução com `chmod +x monitor_nginx.sh`. 

### 5. Configurar o Script de Monitoramento
- Verificar o Log do Script de Monitoramento:
<<<<<<< Updated upstream
`cat online.log` Exibe o log de quando o Nginx esta online.`cat offline.log` Exibe o log de quando o Nginx esta offline
=======
`cat online.log` Exibe o log de quando o Nginx esta online;
`cat offline.log` Exibe o log de quando o Nginx esta offline;
>>>>>>> Stashed changes

### 6. Automatizar com Cron
- Edite o cron `crontab -e`.
- No cron, agende o script para rodar a cada 5 minutos com `*/5 * * * * ~/monitoramento_nginx/monitor_nginx.sh`.

## Versionamento
- Inicie um repositório Git com `git init` e faça commits frequentes para versionar o código.
- Opcional: Crie um repositório remoto no GitHub ou GitLab e faça o push do código.

## Teste
- Pare o Nginx com `sudo systemctl stop nginx` para verificar se o script registra o status OFFLINE.
- Reinicie o Nginx com `sudo systemctl start nginx` e verifique o status ONLINE.

## Logs
- O status do serviço Nginx é registrado em `online.log` e `offline.log` no diretório `monitoramento_nginx`.

