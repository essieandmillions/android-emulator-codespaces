#!/bin/bash
set -e

echo "🚀 Starting Android Emulator..."

# Stop any existing containers
docker stop android-emu 2>/dev/null || true
docker stop novnc 2>/dev/null || true
docker rm android-emu 2>/dev/null || true
docker rm novnc 2>/dev/null || true

# Start Redroid
echo "📱 Starting Android container..."
docker run -itd --rm --privileged \
  --name android-emu \
  -p 5555:5555 \
  redroid/redroid:12.0.0-latest

# Wait for Android to start
echo "⏳ Waiting for Android to boot (30 seconds)..."
sleep 30

# Get container IP
ANDROID_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' android-emu)

# Start noVNC
echo "🌐 Starting noVNC web interface..."
docker run -itd --rm \
  --name novnc \
  -p 6080:8080 \
  -e DISPLAY_WIDTH=720 \
  -e DISPLAY_HEIGHT=1280 \
  -e RUN_XTERM=no \
  --link android-emu \
  theasp/novnc:latest

echo ""
echo "✅ Android Emulator is running!"
echo ""
echo "📱 Access your Android emulator at:"
echo "   http://localhost:6080"
echo ""
echo "🔌 ADB Connection:"
echo "   adb connect localhost:5555"
echo ""
echo "ℹ️  Click the 'Ports' tab in VS Code to get the public URL"
echo ""
