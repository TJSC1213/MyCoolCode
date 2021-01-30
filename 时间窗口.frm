VERSION 5.00
Begin VB.Form Time1—time 
   Caption         =   "当前时间 "
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   7470
   Icon            =   "时间窗口.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3135
   ScaleWidth      =   7470
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer2 
      Left            =   480
      Top             =   0
   End
   Begin VB.CommandButton Command2 
      Caption         =   "点我看日期 &W"
      Height          =   975
      Left            =   3840
      TabIndex        =   2
      Top             =   2160
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "点我看时间 &Q"
      Height          =   975
      Left            =   0
      TabIndex        =   1
      Top             =   2160
      Width           =   3855
   End
   Begin VB.Timer Timer1 
      Left            =   0
      Top             =   0
   End
   Begin 时钟.LED LED1 
      Height          =   2175
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   3836
      BackColor       =   9981440
      ForeColor       =   8454143
      BorderStyle     =   1
      LEDLeft         =   2
      LEDString       =   "LED1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LEDSize         =   8
   End
End
Attribute VB_Name = "Time1—time"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public blnDelete As Boolean
Private Sub Command1_Click()
   LED1.LEDString = Time
   Timer1.Enabled = True
   Timer1.Interval = 1000
End Sub

Private Sub Command2_Click()
   Time2—data.Show
   Time1—time.Enabled = False
End Sub

Private Sub Form_Load()
   Time2—data.Visible = False
   blnDelete = Time2—data.Visible
   Timer2.Enabled = True
   Timer2.Interval = 1000
   LED1.LEDString = ""
End Sub

Private Sub Timer1_Timer()
   LED1.LEDString = Time
End Sub

Private Sub Timer2_Timer()
 If blnDelete = False Then
   Time1—time.Enabled = True
  Else
   Time1—time.Enabled = False
 End If
End Sub
