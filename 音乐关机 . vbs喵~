'========== 设置区域 ==========
' 关机倒计时，单位：秒。例如 1800 = 30分钟
Dim delaySeconds
delaySeconds = 1800

' 音乐文件路径，支持 mp3、wav、wma 等
Dim musicPath
musicPath = "C:\Users\你的用户名\Music\你的音乐.mp3"
'==============================

Dim shell
Set shell = CreateObject("WScript.Shell")

If musicPath <> "" Then
    Dim fso
    Set fso = CreateObject("Scripting.FileSystemObject")

    If fso.FileExists(musicPath) Then
        shell.Run """" & musicPath & """", 1, True
    Else
        shell.Popup "找不到音乐文件：" & musicPath, 5, "提示", 64
    End If

    Set fso = Nothing
End If

shell.Run "shutdown /s /t " & delaySeconds, 0, False

shell.Popup "已设置关机，" & (delaySeconds \ 60) & " 分钟后关机。" & vbCrLf & "取消请输入：shutdown /a", 10, "定时关机", 64

Set shell = Nothing
