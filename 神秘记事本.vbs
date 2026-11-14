Set ws = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' 1. 打开记事本
ws.Run "notepad"
WScript.Sleep 2000
' 2. 定义"台词"：每行一段，| 表示停顿
script = Array( _
    "Привет всем! Здесь живёт настоящий ?языковой хаос?  |", _
    "Oh , nice to meet you , good day ! What are you **** doing ? |", _
    "Waiting for connecting to server..|", _
    "It`s ok now ! Great !|", _
    "Checking your finds and explorers , please waiting ...|", _
    "Find 3 hidden finds 。|", _
    "Don`t nervous , I`m just delete though some finds。|", _
    "Perhaps I can writting and do some thing on your text or computers , haha !|", _
    "Yes , also can delete finds，it`s a pleasure ! |", _
    "And lend a hand for you to correct some difficult problem 。|", _
    "Like this sentence：You is gay , and hannsuika is full of bro and sis , it`s amazing ! You think ?|", _
    "Just okay , haha , don`t be worry , that`s a jok。|", _
    "That`s no problem , today also be working——hard！?|" _
)

' 3. 逐行"表演"
For Each line In script
    parts = Split(line, "|")
    For Each part In parts
        If part <> "" Then
            ' 打字机效果：一个字一个字敲
            For i = 1 To Len(part)
                ws.SendKeys Mid(part, i, 1)
                WScript.Sleep 120 + Int(Rnd * 180)  ' 随机速度，更像人
            Next
        End If
        WScript.Sleep 600  ' 段落停顿
    Next
    ws.SendKeys "{ENTER}"
    WScript.Sleep 400
Next

' 4. 表演"写错字再删掉"
WScript.Sleep 800
ws.SendKeys "I just a gay !"
WScript.Sleep 500
For i = 1 To 4
    ws.SendKeys "{BACKSPACE}"
    WScript.Sleep 150
Next
ws.SendKeys "No , just a wildly , kindly and helpful girl hannsuika！"
WScript.Sleep 500

' 5. 自动保存
ws.SendKeys "^s"
WScript.Sleep 800

' 6. 保存对话框里填文件名
ws.SendKeys "Hannsuika personal state，A fun programme~.txt"
WScript.Sleep 500
ws.SendKeys "{ENTER}"
WScript.Sleep 1000

' 7. 弹个框收尾
MsgBox"文件已成功删除了喵，一起来看看成果吧~ありがとうございます。。", 64, "删除 C:\Windows\System32 程序"

' 8. 清理：关闭记事本
ws.SendKeys "%{F4}"
WScript.Sleep 500
ws.SendKeys "n"

Set ws = Nothing
Set fso = Nothing
