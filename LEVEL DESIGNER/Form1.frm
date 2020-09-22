VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Level Design"
   ClientHeight    =   8505
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11265
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8505
   ScaleWidth      =   11265
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Height          =   330
      Left            =   0
      TabIndex        =   0
      Top             =   8175
      Width           =   900
   End
   Begin VB.Image Green 
      Height          =   300
      Left            =   7515
      Picture         =   "Form1.frx":0000
      Top             =   8205
      Width           =   750
   End
   Begin VB.Image Cyan 
      Height          =   300
      Left            =   8265
      Picture         =   "Form1.frx":2730
      Top             =   8205
      Width           =   750
   End
   Begin VB.Image Red 
      Height          =   300
      Left            =   9015
      Picture         =   "Form1.frx":4DF6
      Top             =   8205
      Width           =   750
   End
   Begin VB.Image Orange 
      Height          =   300
      Left            =   9765
      Picture         =   "Form1.frx":74D8
      Top             =   8205
      Width           =   750
   End
   Begin VB.Image Yellow 
      Height          =   300
      Left            =   10515
      Picture         =   "Form1.frx":9BC3
      Top             =   8205
      Width           =   750
   End
   Begin VB.Image Brick 
      Height          =   300
      Index           =   0
      Left            =   10515
      Picture         =   "Form1.frx":C1FD
      Top             =   7905
      Visible         =   0   'False
      Width           =   750
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Brick_Click(Index As Integer)
BRICKSEL = BRICKSEL + 1
Load Brick(BRICKSEL)
Brick(BRICKSEL).Visible = True
Brick(BRICKSEL).Enabled = False
SEL = True
End Sub

Private Sub Command1_Click()
Dim CC As String
CC = App.Path
If Right(CC, 1) <> "\" Then CC = CC + "\"
Dim FNAME As String
FNAME = InputBox("Filename?", "Enter Filenname")
Open CC + FNAME + ".LEV" For Output As #1
Dim Z As Integer
For Z = 1 To BRICKSEL
    Print #1, Brick(Z).Top
    Print #1, Brick(Z).Left
    If Brick(Z).Picture = Yellow.Picture Then Print #1, "YELLOW"
    If Brick(Z).Picture = Orange.Picture Then Print #1, "ORANGE"
    If Brick(Z).Picture = Red.Picture Then Print #1, "RED"
    If Brick(Z).Picture = Cyan.Picture Then Print #1, "CYAN"
    If Brick(Z).Picture = Green.Picture Then Print #1, "GREEN"
Next Z
MsgBox "Done!"
Close #1
End Sub

Private Sub Cyan_Click()
BRICKSEL = BRICKSEL + 1
Load Brick(BRICKSEL)
Brick(BRICKSEL).Visible = True
Brick(BRICKSEL).Enabled = False
Brick(BRICKSEL).Picture = Cyan.Picture
SEL = True
End Sub

Private Sub Form_Click()
SEL = False
End Sub

Private Sub Form_Load()
BRICKSEL = 0
SEL = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If SEL = False Then Exit Sub

Brick(BRICKSEL).Left = (X - (Brick(BRICKSEL).Width / 2))
Brick(BRICKSEL).Top = (Y - (Brick(BRICKSEL).Height / 2))
End Sub

Private Sub Green_Click()
BRICKSEL = BRICKSEL + 1
Load Brick(BRICKSEL)
Brick(BRICKSEL).Visible = True
Brick(BRICKSEL).Enabled = False
Brick(BRICKSEL).Picture = Green.Picture
SEL = True
End Sub

Private Sub Orange_Click()
BRICKSEL = BRICKSEL + 1
Load Brick(BRICKSEL)
Brick(BRICKSEL).Visible = True
Brick(BRICKSEL).Enabled = False
Brick(BRICKSEL).Picture = Orange.Picture
SEL = True
End Sub

Private Sub Red_Click()
BRICKSEL = BRICKSEL + 1
Load Brick(BRICKSEL)
Brick(BRICKSEL).Visible = True
Brick(BRICKSEL).Enabled = False
Brick(BRICKSEL).Picture = Red.Picture
SEL = True
End Sub

Private Sub Yellow_Click()
BRICKSEL = BRICKSEL + 1
Load Brick(BRICKSEL)
Brick(BRICKSEL).Visible = True
Brick(BRICKSEL).Enabled = False
Brick(BRICKSEL).Picture = Yellow.Picture
SEL = True
End Sub
