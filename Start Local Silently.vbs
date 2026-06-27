Set WshShell = CreateObject("WScript.Shell")
' Run the local batch file silently (0 = hidden window)
WshShell.Run chr(34) & "e:\EduTutor AI\Start Local.bat" & Chr(34), 0
Set WshShell = Nothing
