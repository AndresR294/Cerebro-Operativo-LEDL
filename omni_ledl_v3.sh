#!/bin/bash
# PROPIEDAD INTELECTUAL: J ANDRES RESENDEZ R
# MÓDULO: Orquestador Inmortal v3 (Zero Errors)

echo "--- INICIANDO PROTOCOLO OMNI-LEDL V3 ---"

# 1. Configuración Forzada
git config --global user.email "resendezandres0@gmail.com"
git config --global user.name "AndresR294"
git config --global init.defaultBranch main

# 2. Sincronización de Archivos
git add .
git commit -m "Snapshot Soberana LEDL: $(date +'%Y-%m-%d %H:%M')"

# 3. Alineación de Rama y Empuje
git branch -M main
echo ">> Empujando datos al repositorio AndresR294..."
git push -u origin main --force

# 4. Notificación a Telegram
TOKEN="8512593184:AAEXhOsMTjfnUOus5AkLS58q-py03lq2jlA"
ID="8486738889"
MSG="🛡️ *INFRAESTRUCTURA LEDL PROTEGIDA*%0AGitHub: https://github.com/AndresR294/Cerebro-Operativo-LEDL%0AEstado: Activos Inmutables%0A_Firma: J Andres Resendez R._"

curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" -d "chat_id=$ID" -d "text=$MSG" -d "parse_mode=Markdown" > /dev/null

echo "--------------------------------------------------------"
echo "ANÁLISIS DE AIKO: Repositorio sincronizado exitosamente."
echo "--------------------------------------------------------"
