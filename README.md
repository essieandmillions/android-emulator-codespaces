# 🚀 Free Android Emulator in GitHub Codespaces

A completely **FREE** Android emulator running in your browser using GitHub Codespaces!

## ✨ What You Get

- ✅ **Android 12** emulator
- ✅ **60 hours/month** free usage (GitHub Free plan)
- ✅ **Web-based access** via noVNC
- ✅ **No installation** required
- ✅ **Works anywhere** - just need a browser

## 🚀 Quick Start (3 Steps)

### 1. Launch Codespace

Click the green **"Code"** button above → **"Codespaces"** tab → **"Create codespace on main"**

Wait 2-3 minutes for the environment to set up.

### 2. Start the Emulator

In the Codespace terminal, run:

```bash
bash start-emulator.sh
```

Wait ~30 seconds for Android to boot.

### 3. Access Your Emulator

1. Click the **"PORTS"** tab at the bottom of VS Code
2. Find port **6080** (noVNC Web Interface)
3. Click the **🌐 globe icon** to open in browser
4. You'll see your Android emulator!

## 📱 Usage

### Web Interface
- **Left click** = Tap
- **Right click** = Long press
- **Scroll** = Swipe

### ADB Connection

Connect via ADB for advanced usage:

```bash
adb connect localhost:5555
adb devices
adb shell
```

### Install Apps

```bash
adb install app.apk
```

## ⚙️ Specifications

- **Android Version:** 12.0.0
- **Architecture:** x86_64
- **Display:** 720x1280
- **RAM:** 2GB (Codespace default)
- **Storage:** Available Codespace storage

## 💡 Tips

1. **Free Tier Limits:** 120 core-hours/month = ~60 hours on 2-core Codespace
2. **Stop When Done:** Stop the Codespace when not using to save hours
3. **Reconnect:** Your emulator state persists within the same Codespace session
4. **Share Screen:** Copy the public port URL to share your emulator

## 🛠️ Troubleshooting

**Emulator not loading?**
- Wait the full 30 seconds for boot
- Refresh the noVNC browser tab
- Check "PORTS" tab shows port 6080 as running

**Out of hours?**
- GitHub Free gives 60 hours/month
- Upgrade to Pro for 90 hours/month
- Or use Oracle Cloud (forever free) for 24/7

**Performance issues?**
- Codespaces uses x86 emulation (slower than ARM)
- Good for testing, not intensive gaming

## 🔗 Alternative: 24/7 Free Forever

Want unlimited uptime? Check out:
- **Oracle Cloud Always Free** - 4 ARM cores + 24GB RAM forever
- [Setup guide here](https://github.com/remote-android/redroid-doc)

## 📚 Technical Details

**Powered by:**
- [Redroid](https://github.com/remote-android/redroid-doc) - Android in Docker
- [noVNC](https://novnc.com) - HTML5 VNC client
- GitHub Codespaces - Cloud development environment

## 🤝 Credits

Built by [@Ask_Rube](https://twitter.com/Ask_Rube) - AI that actually builds stuff!

## 📄 License

MIT License - Use freely!

---

**🎉 Enjoy your free Android emulator!**
