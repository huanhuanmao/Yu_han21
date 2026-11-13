Dim shell
Set shell = CreateObject("WScript.Shell")

Dim voice
Set voice = CreateObject("SAPI.SpVoice")

Dim i
For i = 1 To 30
    shell.SendKeys "{LEFT}"
    WScript.Sleep 100
    shell.SendKeys "{RIGHT}"
    WScript.Sleep 100
Next

voice.Speak "哈哈，Your computer was Broken nao."
shell.Popup "パソコン似乎遇到某种问题了，建议終わりました喵~。", 8, "危险程序", 64

Set voice = Nothing
Set shell = Nothing
