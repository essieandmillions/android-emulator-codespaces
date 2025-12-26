#!/bin/bash
set -e

echo "🚀 Setting up Android Emulator in Codespaces..."

# Install Docker if not present
if ! command -v docker &> /dev/null; then
    echo "📦 Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    rm get-docker.sh
fi

# Pull Redroid (Android in Docker)
echo "📱 Pulling Redroid Android 12 image..."
docker pull redroid/redroid:12.0.0-latest

# Pull noVNC for web access
echo "🌐 Pulling noVNC web interface..."
docker pull theasp/novnc:latest

echo "✅ Setup complete! Run 'bash start-emulator.sh' to launch the emulator."
