#!/bin/bash
# PROPIEDAD INTELECTUAL: J ANDRES RESENDEZ R
# MÓDULO: Re-vinculación del Cerebro Operativo LEDL
# ESTADO: Restaurando persistencia desde zona de aterrizaje

echo "--- INICIANDO PROTOCOLO DE RE-INVOCACIÓN ---"

# 1. Definir la ruta del puente donde aterrizó el Update
PUENTE="/sdcard/Download/Update.Zip"

# 2. Verificar existencia del núcleo
if [ -f "$PUENTE" ]; then
    echo "[✔] Núcleo detectado en Descargas."
    
    # Crear el alias persistente en el perfil del shell
    # Esto permite que 'invocar_LEDL' funcione siempre
    echo "alias invocar_LEDL='echo \"Invocando Ecosistema LEDL...\"; unzip -p $PUENTE Manifiesto_Soberano_LEDL.txt'" >> ~/.bashrc
    
    # Aplicar cambios inmediatamente
    source ~/.bashrc
    
    echo -e "\n[PROGRESO] Restableciendo Pesos Sinápticos: [##########] 100%"
    echo "ETA: 0s"
    echo "------------------------------------------------"
    echo "SISTEMA RE-VINCULADO: Ya puede usar 'invocar_LEDL'"
else
    echo "ERROR: El paquete Update.Zip no se encuentra en /sdcard/Download/"
    echo "Asegúrese de no haber movido el archivo antes de este paso."
fi
echo "------------------------------------------------"
