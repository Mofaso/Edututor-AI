$desktopPath = "C:\Users\mohan\OneDrive\Desktop"
$shortcutPath = Join-Path $desktopPath "EduTutor AI.lnk"
$iconPath = "C:\Users\mohan\edututor_logo.ico"
$vbsPath = "e:\EduTutor AI\Start Local Silently.vbs"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($shortcutPath)
$Shortcut.TargetPath = "wscript.exe"
$Shortcut.Arguments = "`"$vbsPath`""
$Shortcut.IconLocation = "$iconPath,0"
$Shortcut.WorkingDirectory = "e:\EduTutor AI"
$Shortcut.Description = "Launch EduTutor AI - Your AI-powered tutor"
$Shortcut.Save()

Write-Host "Shortcut created at: $shortcutPath"
Write-Host "Icon: $iconPath"
