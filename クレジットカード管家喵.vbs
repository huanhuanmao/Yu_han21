Dim voice, a
#由于技术问题不给注释喵~
Set voice = CreateObject("SAPI.SpVoice")
a = InputBox("What are you fucking doing , bro？", "クレジットカード管家")

voice.Volume = 100

If a <> "" Then
	voice.Speak "友達ハンスイちゃん，"
	WScript.Sleep 500
	voice.Speak a
End If
