@echo off
set file=C:\Users\Landon\Desktop\police\aound.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.settings.setMode "loop", True
  echo Sound.Controls.play
  echo While Sound.playState ^<^> 1
  echo wscript.sleep 100
  echo Wend
)>sound.vbs
start /min sound.vbs
exit /b
