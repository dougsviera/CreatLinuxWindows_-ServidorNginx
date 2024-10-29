#!/bin/bash

# Configurações
DIRETORIO_SAIDA="$HOME/monitoramento_nginx"
SERVICO="nginx"
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')

# Verifica o status do serviço
if systemctl is-active --quiet $SERVICO; then
    STATUS="ONLINE"
    MENSAGEM="O serviço $SERVICO está ONLINE."
    echo "$DATA_HORA - $SERVICO - $STATUS - $MENSAGEM" >> "$DIRETORIO_SAIDA/online.log"
else
    STATUS="OFFLINE"
    MENSAGEM="O serviço $SERVICO está OFFLINE."
    echo "$DATA_HORA - $SERVICO - $STATUS - $MENSAGEM" >> "$DIRETORIO_SAIDA/offline.log"
fi
