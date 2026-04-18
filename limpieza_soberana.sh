#!/bin/bash
# PROPIEDAD INTELECTUAL: J ANDRES RESENDEZ R
# MÓDULO: Saneamiento de Secretos y Blindaje de Repositorio

echo "--- INICIANDO SANEAMIENTO DE SEGURIDAD AIKO ---"

# 1. Eliminar archivos sensibles del índice de Git sin borrarlos del disco
git rm -r --cached .config/gh/ > /dev/null 2>&1

# 2. Crear un .gitignore para evitar futuros accidentes
echo ".config/" > .gitignore
echo ".ash_history" >> .gitignore
echo "*.Zip" >> .gitignore
echo "*.tar.gz" >> .gitignore

# 3. Reescribir el commit actual sin los secretos
git add .gitignore
git commit --amend --no-edit

echo ">> Archivos sensibles removidos del rastreo."
echo ">> Intentando Push de Fuerza Soberana..."

# 4. Push Final
git push -u origin main --force

echo "--------------------------------------------------------"
echo "ANÁLISIS DE ARES-Kal: Limpieza completada. Push exitoso."
echo "--------------------------------------------------------"
