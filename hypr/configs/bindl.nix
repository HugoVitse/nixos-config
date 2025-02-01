[
    ", xf86AudioMicMute, exec, $scriptsDir/Volume.sh --toggle-mic" #mute mic
    ", xf86audiomute, exec, $scriptsDir/Volume.sh --toggle"
    ", xf86Sleep, exec, systemctl suspend"  # sleep button 
    ", xf86Rfkill, exec, $scriptsDir/AirplaneMode.sh" #Airplane mode
    ", xf86AudioPlayPause, exec, $scriptsDir/MediaCtrl.sh --pause"
    ", xf86AudioPause, exec, $scriptsDir/MediaCtrl.sh --pause"
    ", xf86AudioPlay, exec, $scriptsDir/MediaCtrl.sh --pause"
    ", xf86AudioNext, exec, $scriptsDir/MediaCtrl.sh --nxt"
    ", xf86AudioPrev, exec, $scriptsDir/MediaCtrl.sh --prv"
    ", xf86audiostop, exec, $scriptsDir/MediaCtrl.sh --stop"
]