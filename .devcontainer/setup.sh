#!/bin/bash
set -e

echo "🚀 Configurando entorno de Programación Funcional y Reactiva..."

# Instalar SDKMAN
echo "📦 Instalando SDKMAN..."
export SDKMAN_DIR="$HOME/.sdkman"
curl -s "https://get.sdkman.io" | bash

# Cargar SDKMAN para esta sesión
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Instalar Scala 3
echo "📦 Instalando Scala 3..."
sdk install scala 3.3.1 < /dev/null

# Instalar SBT
echo "📦 Instalando SBT..."
sdk install sbt < /dev/null

# Instalar pip para Python
echo "📦 Configurando pip..."
python3 -m pip install --upgrade pip

# Instalar Glow para visualizar Markdown
echo "📦 Instalando Glow..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install -y glow

# Verificar instalaciones
echo ""
echo "✅ Verificando instalaciones..."
echo "Java version:"
java -version
echo ""
echo "Scala version:"
scala -version
echo ""
echo "SBT version:"
sbt --version
echo ""
echo "Python version:"
python3 --version
echo ""
echo "Maven version:"
mvn --version
echo ""
echo "Glow version:"
glow --version

echo ""
echo "✨ Entorno configurado correctamente!"
echo "📚 Usa 'glow' para ver los archivos markdown con las prácticas"
echo "🎓 Bienvenido al entorno de Programación Funcional y Reactiva - UTPL"