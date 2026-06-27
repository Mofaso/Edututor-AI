$desktopPath = [Environment]::GetFolderPath("Desktop")
$shortcutPath = Join-Path -Path $desktopPath -ChildPath "EduTutor AI.lnk"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($shortcutPath)
$Shortcut.TargetPath = "e:\EduTutor AI\Start Silently.vbs"
$Shortcut.IconLocation = "e:\EduTutor AI\icon.ico"
$Shortcut.WorkingDirectory = "e:\EduTutor AI"
$Shortcut.Save()
Write-Host "Shortcut successfully updated at $shortcutPath"
