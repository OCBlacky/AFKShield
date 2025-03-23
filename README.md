# AFKShield - Standalone AFK Kick Script for FiveM

## 📌 Description
AFKShield is a lightweight, standalone AFK kick system for FiveM servers. It monitors player activity and automatically kicks inactive players after a set time, preventing server congestion and improving roleplay quality.

## 🔧 Features
✅ Standalone – Works on any FiveM server (no ESX/QBCore required)  
✅ Configurable AFK timeout (default: 10 minutes)  
✅ Warning notification before kick  
✅ Automatic timer reset on movement  
✅ `/afkreset` command to manually reset AFK timer  
✅ Optimized and low resource usage  

## 📂 Installation
1. Download the script and place the `afk_shield` folder into your `resources/` directory.
2. Add the following line to your `server.cfg` file:
   ```ini
   ensure afk_shield
   ```
3. Restart your server.

## ⚙️ Configuration
To change the AFK timeout or warning time, edit the values inside `afk_kick.lua`:
```lua
local afkTime = 600 -- Time in seconds before getting kicked (default: 10 minutes)
local warningTime = 30 -- Time before kick to show warning (default: 30 seconds)
```

## 🎮 Commands
- `/afkreset` – Manually resets the AFK timer for the player.

## 🛠️ Future Updates
🔹 Discord webhook logging for AFK kicks  
🔹 More customization options (kick messages, exempt roles, etc.)  

## 📜 License
This script is open-source and free to use. Feel free to modify it to fit your server’s needs.

---
🚀 **Created by [Your Name]** | FiveM Standalone Script

