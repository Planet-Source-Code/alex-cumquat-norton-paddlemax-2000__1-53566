VERSION 5.00
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "msdxm.ocx"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "PaddleBall"
   ClientHeight    =   8535
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11295
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "Form1.frx":0000
   MousePointer    =   2  'Cross
   Picture         =   "Form1.frx":030A
   ScaleHeight     =   8535
   ScaleWidth      =   11295
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrByByBoom 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1665
      Top             =   8130
   End
   Begin VB.Timer tmrGrenade 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   1245
      Top             =   8130
   End
   Begin VB.Timer tmrEventClear 
      Interval        =   2000
      Left            =   405
      Top             =   8130
   End
   Begin VB.Timer tmrWearoff 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   -15
      Top             =   8130
   End
   Begin VB.Timer tmrEvents 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   825
      Top             =   8130
   End
   Begin VB.Image BG3 
      Height          =   8565
      Left            =   2790
      Picture         =   "Form1.frx":15FC4C
      Top             =   7965
      Visible         =   0   'False
      Width           =   11325
   End
   Begin VB.Image BG2 
      Height          =   8565
      Left            =   2805
      Picture         =   "Form1.frx":29BF42
      Top             =   8235
      Visible         =   0   'False
      Width           =   11325
   End
   Begin MediaPlayerCtl.MediaPlayer TickTock 
      Height          =   150
      Left            =   2355
      TabIndex        =   5
      Top             =   8250
      Visible         =   0   'False
      Width           =   135
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   -1  'True
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   -1  'True
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   5
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   0
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   -1  'True
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   -1  'True
      ShowStatusBar   =   0   'False
      ShowTracker     =   -1  'True
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   0
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer Sound1 
      Height          =   150
      Left            =   2175
      TabIndex        =   4
      Top             =   8250
      Visible         =   0   'False
      Width           =   150
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   -1  'True
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   -1  'True
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   5
      CaptioningID    =   ""
      ClickToPlay     =   0   'False
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   1
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   -1  'True
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   -1  'True
      ShowStatusBar   =   0   'False
      ShowTracker     =   -1  'True
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin VB.Image Kaboom 
      Enabled         =   0   'False
      Height          =   4005
      Left            =   8715
      Picture         =   "Form1.frx":3D8238
      Stretch         =   -1  'True
      Top             =   8010
      Visible         =   0   'False
      Width           =   4005
   End
   Begin VB.Image Grenade 
      Height          =   300
      Left            =   3600
      Picture         =   "Form1.frx":3DA1E5
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Label lblLives 
      BackStyle       =   0  'Transparent
      Caption         =   "LIVES: 3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   360
      Left            =   15
      TabIndex        =   3
      Top             =   15
      Width           =   1770
   End
   Begin VB.Image Green 
      Height          =   300
      Left            =   8550
      Picture         =   "Form1.frx":3DA63F
      Top             =   8175
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Cyan 
      Height          =   300
      Left            =   8430
      Picture         =   "Form1.frx":3DCD6F
      Top             =   8175
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Red 
      Height          =   300
      Left            =   8295
      Picture         =   "Form1.frx":3DF435
      Top             =   8175
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Orange 
      Height          =   300
      Left            =   8160
      Picture         =   "Form1.frx":3E1B17
      Top             =   8175
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Yellow 
      Height          =   300
      Left            =   8055
      Picture         =   "Form1.frx":3E4202
      Top             =   8175
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Incinerator 
      Height          =   300
      Left            =   7335
      Picture         =   "Form1.frx":3E683C
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image Brick 
      Enabled         =   0   'False
      Height          =   300
      Index           =   0
      Left            =   4050
      Picture         =   "Form1.frx":3E6CE9
      Top             =   8190
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Invisiball 
      Height          =   300
      Left            =   4905
      Picture         =   "Form1.frx":3E9413
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image NormalBall 
      Height          =   300
      Left            =   5295
      Picture         =   "Form1.frx":3E9474
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image Ball 
      Enabled         =   0   'False
      Height          =   300
      Left            =   4260
      Picture         =   "Form1.frx":3E992C
      Top             =   7440
      Width           =   300
   End
   Begin VB.Image Trail3 
      Height          =   300
      Left            =   6945
      Picture         =   "Form1.frx":3E9DE4
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image Trail2 
      Height          =   300
      Left            =   6555
      Picture         =   "Form1.frx":3EA224
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image Trail1 
      Height          =   300
      Left            =   6150
      Picture         =   "Form1.frx":3EA664
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image SpeedBall 
      Height          =   300
      Left            =   5655
      Picture         =   "Form1.frx":3EAAA4
      Top             =   8160
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Label lblEvent2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "BEGIN!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1320
      Left            =   0
      TabIndex        =   2
      Top             =   3120
      Width           =   11385
   End
   Begin VB.Label lblEvent 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "BEGIN!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1320
      Left            =   0
      TabIndex        =   1
      Top             =   3230
      Width           =   11385
   End
   Begin VB.Label lblCountDown 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   570
      Left            =   10845
      TabIndex        =   0
      Top             =   0
      Width           =   450
   End
   Begin VB.Image BadThing 
      Enabled         =   0   'False
      Height          =   750
      Left            =   1965
      Picture         =   "Form1.frx":3EAF51
      Top             =   4365
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image PowerUp 
      Enabled         =   0   'False
      Height          =   750
      Left            =   6690
      Picture         =   "Form1.frx":3EB9F2
      Top             =   3645
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Image Paddle 
      Enabled         =   0   'False
      Height          =   300
      Left            =   5280
      Picture         =   "Form1.frx":3EC377
      Stretch         =   -1  'True
      Top             =   7695
      Width           =   1050
   End
   Begin VB.Image ForceField 
      Enabled         =   0   'False
      Height          =   150
      Left            =   -360
      Picture         =   "Form1.frx":3EEADA
      Top             =   7695
      Visible         =   0   'False
      Width           =   12000
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' PADDLEMAX 2000: PROGRAMMED BY CUMQUAT (mr_shnokovitz@yahoo.com)

' THIS GAME HAS SOUND, SO PUT THOSE HEADPHONES ON!!!

Private Sub Form_Click()
' Start the ball rolling!
If tmrEvents.Enabled = False Then tmrEvents.Enabled = True
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
' Has the user pressed escape? If so, quit!
If KeyCode = 27 Then
    End
End If
End Sub

Private Sub Form_Load()
'Clear any existing bricks
On Error Resume Next
For Z = 1 To 1000
    Unload Brick(Z)
Next Z

'Set the initial values for all of the variables
FF = False
LR = 100
UD$ = "U"
PWRUPINT = 500
BADTHINT = 1000
PWRUP = 0
BADTH = 0
Randomize
SPEED$ = "OFF"
DRUNK = False
FLY = False
LVL = 1

'Where are we running the program from?
CC = App.Path

'Win2K/XP fix
If Right(CC, 1) <> "\" Then CC = CC + "\"

'Open up the first, default level file
Open CC + "LEVEL" + Trim(Str(LVL)) + ".LEV" For Input As #1

'The level files are set up to be divided into three lines:
'       -The Y position of the brick
'       -The X position of the brick
'       -The colour of the brick
'This is repeated once for each brick in the level
Dim TEMPLINE
BRICKS = 1
Do Until EOF(1)
    Line Input #1, TEMPLINE
    
    'Create a new brick from the control array (that I prepared earlier :-P)
    Load Brick(BRICKS)
    Brick(BRICKS).Visible = True
    Brick(BRICKS).Enabled = False
    Brick(BRICKS).top = Val(TEMPLINE)
    Line Input #1, TEMPLINE
    Brick(BRICKS).left = Val(TEMPLINE)
    Line Input #1, TEMPLINE
    
    'Set the bricks' colour as designated in the level file
    If TEMPLINE = "YELLOW" Then Brick(BRICKS).Picture = Yellow.Picture
    If TEMPLINE = "ORANGE" Then Brick(BRICKS).Picture = Orange.Picture
    If TEMPLINE = "RED" Then Brick(BRICKS).Picture = Red.Picture
    If TEMPLINE = "CYAN" Then Brick(BRICKS).Picture = Cyan.Picture
    If TEMPLINE = "GREEN" Then Brick(BRICKS).Picture = Green.Picture
    BRICKS = BRICKS + 1
Loop
Close #1

'The game system is based on lives. Makes life interesting, no?
LIVES = 3
End Sub

Private Sub ShowEvent(ENAME As String)
'Add the defined text to the label running accross the middle of the screen
lblEvent.Caption = ENAME
'Create a shadow (the cheat way :-P)
lblEvent2.Caption = ENAME
'Clear both labels after a couple of seconds
tmrEventClear.Enabled = True
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
' Has the player picked up the DRUNK PADDLE powerup? If so, make the paddle walk the line :-P
If DRUNK = False Then Paddle.left = (X - (Paddle.Width / 2))
If DRUNK = True Then Paddle.left = ((Form1.Width - X) - (Paddle.Width / 2))
' Has the player picked up the FLYING PADDLE powerup? If so, make it follow the mouse cursor
If FLY = True Then Paddle.top = (Y - (Paddle.Height / 2))
' If the game hasn't started yet, just glue the ball to the paddle
If tmrEvents.Enabled = False Then Ball.left = (Paddle.left + (Paddle.Width / 2)) - (Ball.Width / 2)
End Sub

' These extra two repetitions of the above code are to control and react to mouse movement
' while the mouse is over the event reader labels running accross the centre of the screen.

' I would have just set the two label controls' ENABLED properties to FALSE, but then the
' text appeared grey, and colour is everything, man!

Private Sub lblEvent_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
' Has the player picked up the DRUNK PADDLE powerup? If so, make the paddle walk the line :-P
If DRUNK = False Then Paddle.left = (X - (Paddle.Width / 2))
If DRUNK = True Then Paddle.left = ((Form1.Width - X) - (Paddle.Width / 2))
' Has the player picked up the FLYING PADDLE powerup? If so, make it follow the mouse cursor
If FLY = True Then Paddle.top = (lblEvent.top + (Y - (Paddle.Height / 2)))
' If the game hasn't started yet, just glue the ball to the paddle
If tmrEvents.Enabled = False Then Ball.left = (Paddle.left + (Paddle.Width / 2)) - (Ball.Width / 2)
End Sub

Private Sub lblEvent2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
' Has the player picked up the DRUNK PADDLE powerup? If so, make the paddle walk the line :-P
If DRUNK = False Then Paddle.left = (X - (Paddle.Width / 2))
If DRUNK = True Then Paddle.left = ((Form1.Width - X) - (Paddle.Width / 2))
' Has the player picked up the FLYING PADDLE powerup? If so, make it follow the mouse cursor
If FLY = True Then Paddle.top = (lblEvent2.top + (Y - (Paddle.Height / 2)))
' If the game hasn't started yet, just glue the ball to the paddle
If tmrEvents.Enabled = False Then Ball.left = (Paddle.left + (Paddle.Width / 2)) - (Ball.Width / 2)
End Sub

Private Sub tmrByByBoom_Timer()
' Hide the grenade explosion effect
Kaboom.Visible = False
' Turn off this timer
tmrByByBoom.Enabled = False
End Sub

Private Sub tmrEventClear_Timer()
' Clear all text out of the two event reader labels
lblEvent.Caption = ""
lblEvent2.Caption = ""
' Turn off this timer
tmrEventClear.Enabled = False
End Sub

' Here is the big one. This timer controls, like, 90% of the events that take place in this game.
' It's all crammed into the one timer, because more advanced programmers will know that the more
' timer controls you have running at the same time, the slower your program will function.

Private Sub tmrEvents_Timer()

' Has the mouse pointer left the "playing field"? If it has, pause the game and wait for the user
' to say otherwise.
If (M_GetX * 15) < Form1.left Or (M_GetX * 15) > (Form1.left + Form1.Width) Or (M_GetY * 15) < Form1.top Or (M_GetY * 15) > (Form1.top + Form1.Height) Then
    tmrEvents.Enabled = False
    tmrWearoff.Enabled = False
    MsgBox "Mouse left screen. Click OK to continue."
    tmrEvents.Enabled = True
    tmrWearoff.Enabled = True
End If

Dim Z As Integer

' If the player currently has the SPEED BALL powerup, five the ball a flaming trail!
If SPEED$ = "ON" Then
    Z = Int(Rnd * 3) + 1
    If Z = 1 Then
        Trail1.Visible = True
        Trail1.Move Ball.left, Ball.top
    End If
    If Z = 2 Then
        Trail2.Visible = True
        Trail2.Move Ball.left, Ball.top
    End If
    If Z = 3 Then
        Trail3.Visible = True
        Trail3.Move Ball.left, Ball.top
    End If
End If

Dim BALLPOS As Integer

'We don't want the ball to move too fast, now, do we?
If LR > 200 Then LR = 200
If LR < -200 Then LR = -200
If LR > -10 And LR < 10 Then LR = 10

Rem ***MOVE BALL***
Ball.left = Ball.left + LR
If UD$ = "U" Then Ball.top = Ball.top - 100
If UD$ = "D" Then Ball.top = Ball.top + 100

Rem ***CHECK WALL COLLISIONS***
If Ball.left < 0 Then
    LR = LR * -1
    
End If
If (Ball.left + Ball.Width) > Form1.Width Then
    Ball.left = (Form1.Width - Ball.Width)
    LR = LR * -1
    
End If
If Ball.top < 0 Then
    UD$ = "D"
    
End If
If FF = True And (Ball.top + Ball.Height) > Paddle.top Then
    UD$ = "U"
    
End If

' Has the ball fallen off the bottom of the screen?
If Ball.top > Form1.Height Then
    tmrGrenade.Enabled = False
    tmrEvents.Enabled = False
    tmrWearoff.Enabled = False
    Ball.Picture = NormalBall.Picture
    Form1.MousePointer = 0
    
    ' If the player has no lives left, the game ends.
    If LIVES = 0 Then
        Sound1.FileName = CC + "gameover.wav"
        MsgBox "No lives left! Game over!"
        End
    End If
    Sound1.FileName = CC + "death.wav"
    
    'Do they want to give it another go if they have the lives left?
    RESPONSE = MsgBox("Try again?", vbYesNo, "?")
    If RESPONSE = vbNo Then End
    
    ' If yes, then reset all the gameplay variables, except for the bricks. (I originally had
    ' is so that it reset the bricks, too. However, this got very annoying when you had to
    ' start from scratch each time!)
    TickTock.Stop
    Form1.MousePointer = 2
    LIVES = LIVES - 1
    lblLives.Caption = "LIVES: " + Str(LIVES)
    LR = 100
    UD$ = "U"
    ShowEvent ("BEGIN!")
    Ball.left = (Form1.Width / 2)
    Ball.top = 7440
    Paddle.Width = 1050
    PWRUP = 0
    BADTH = 0
    PowerUp.Visible = False
    BadThing.Visible = False
    SPEED$ = "OFF"
    BURN$ = "OFF"
    tmrEvents.Enabled = False
    Ball.top = (Paddle.top - (Ball.Height / 2))
    lblCountDown.Caption = ""
    Trail1.Visible = False
    Trail2.Visible = False
    Trail3.Visible = False
    DRUNK = False
    FLY = False
    FF = False
    ForceField.Visible = False
    Paddle.top = 7695
End If

Rem ***CHECK PADDLE COLLISION***

' Has the ball hit the paddle?
If (Ball.top + Ball.Height) >= Paddle.top And (Ball.top + Ball.Height) < (Paddle.top + Paddle.Height) Then
    BALLPOS = Int(Ball.left + (Ball.Width / 2))
    
    ' Make the ball bounce back up again.
    If BALLPOS > Paddle.left And BALLPOS < (Paddle.left + Paddle.Width) Then
        UD$ = "U"
    End If
    
    'Where on the paddle did the ball hit? This dictates what angle to make it shoot off at.
    If BALLPOS > Paddle.left And BALLPOS < (Paddle.left + Paddle.Width) Then
        LR = LR + Int((BALLPOS - Paddle.left) / 25)
    End If
    If BALLPOS < (Paddle.left + Paddle.Width) And BALLPOS >= (Paddle.left + Paddle.Width) Then
        LR = LR - Int((((Paddle.left + Paddle.Width) - BALLPOS) / 25))
    End If
End If

Rem ***LEVEL COMPLETED?***
Dim TICKS

For Z = 1 To (BRICKS - 1)
    If Brick(Z).Visible = False Then TICKS = TICKS + 1
Next Z

' Yay! They've completed the level! Unload all of the instanced BRICK controls, reset all the
' variables, change the background texture and load the next level file.
If TICKS = (BRICKS - 1) Then
    tmrEvents.Enabled = False
    Sound1.FileName = CC + "powerup.wav"
    MsgBox "Congratulations! You win!"

On Error Resume Next
For Z = 1 To 1000
    Unload Brick(Z)
Next Z

BRICKS = 1
FF = False
LR = 100
UD$ = "U"
PWRUPINT = 500
BADTHINT = 1000
PWRUP = 0
BADTH = 0
Randomize
SPEED$ = "OFF"
DRUNK = False
FLY = False
LVL = LVL + 1
Ball.top = 7440
Paddle.top = 6795
Paddle.Width = 1050

' If they've finished all three levels that I've designed, they win the game. Change this bit if
' you start adding your own levels. BE SURE TO NAME THEM "LEVEL4, LEVEL5, etc, etc
If LVL = 4 Then
    MsgBox "You've completed all three levels! Congratulations!" + vbCrLf + vbCrLf + "Now you can use the level editor to make your own!", vbExclamation, "You've won!"
    End
End If

' Change the background texture
If LVL = 2 Then Form1.Picture = BG2.Picture
If LVL = 3 Then Form1.Picture = BG3.Picture

' Load up the new level and put all the bricks in place
CC = App.Path
If Right(CC, 1) <> "\" Then CC = CC + "\"
Open CC + "LEVEL" + Trim(Str(LVL)) + ".Lev" For Input As #1
Dim TEMPLINE
BRICKS = 1
Do Until EOF(1)
    Line Input #1, TEMPLINE
    Load Brick(BRICKS)
    Brick(BRICKS).Visible = True
    Brick(BRICKS).Enabled = False
    Brick(BRICKS).top = Val(TEMPLINE)
    Line Input #1, TEMPLINE
    Brick(BRICKS).left = Val(TEMPLINE)
    Line Input #1, TEMPLINE
    If TEMPLINE = "YELLOW" Then Brick(BRICKS).Picture = Yellow.Picture
    If TEMPLINE = "ORANGE" Then Brick(BRICKS).Picture = Orange.Picture
    If TEMPLINE = "RED" Then Brick(BRICKS).Picture = Red.Picture
    If TEMPLINE = "CYAN" Then Brick(BRICKS).Picture = Cyan.Picture
    If TEMPLINE = "GREEN" Then Brick(BRICKS).Picture = Green.Picture
    BRICKS = BRICKS + 1
Loop
Close #1
Paddle.top = 7695
End If

Rem ***CHECK BRICK COLLISIONS***
For Z = 1 To (BRICKS - 1)

    ' Depending on what side of the brick is hit, depends on how the ball will bounce off. This
    ' code handles that
    
    Rem ***HIT THE LEFT-HAND SIDE OF BRICK***
    If (Ball.top + Ball.Height) > Brick(Z).top And Ball.top < (Brick(Z).top + Brick(Z).Height) And (Ball.left + Ball.Width) > Brick(Z).left And (Ball.left + Ball.Width) < (Brick(Z).left + 200) And Brick(Z).Visible = True Then
        If BURN$ = "ON" Then GoTo l2
        
        LR = LR * -1
        If Brick(Z).Picture = Yellow.Picture Then Brick(Z).Visible = False
        If Brick(Z).Picture = Orange.Picture Then Brick(Z).Picture = Yellow.Picture
        If Brick(Z).Picture = Red.Picture Then Brick(Z).Picture = Orange.Picture
        If Brick(Z).Picture = Cyan.Picture Then Brick(Z).Picture = Red.Picture
        If Brick(Z).Picture = Green.Picture Then Brick(Z).Picture = Cyan.Picture
        If UD$ = "U" Then
            UD$ = "D"
            GoTo l1
        End If
        If UD$ = "D" Then
            UD$ = "U"
            GoTo l1
        End If
        GoTo l1
l2:     Brick(Z).Visible = False
        GoTo CNT
l1: End If

    Rem ***HIT THE RIGHT-HAND SIDE OF BRICK***
    If (Ball.top + Ball.Height) > Brick(Z).top And Ball.top < (Brick(Z).top + Brick(Z).Height) And Ball.left < (Brick(Z).left + Brick(Z).Width) And Ball.left > ((Brick(Z).left + Brick(Z).Width) - 200) And Brick(Z).Visible = True Then
        If BURN$ = "ON" Then GoTo l2
        
        LR = LR * -1
        If Brick(Z).Picture = Yellow.Picture Then Brick(Z).Visible = False
        If Brick(Z).Picture = Orange.Picture Then Brick(Z).Picture = Yellow.Picture
        If Brick(Z).Picture = Red.Picture Then Brick(Z).Picture = Orange.Picture
        If Brick(Z).Picture = Cyan.Picture Then Brick(Z).Picture = Red.Picture
        If Brick(Z).Picture = Green.Picture Then Brick(Z).Picture = Cyan.Picture
        If UD$ = "U" Then
            UD$ = "D"
            GoTo r1
        End If
        If UD$ = "D" Then
            UD$ = "U"
            GoTo r1
        End If
        GoTo l1
r2:     Brick(Z).Visible = False
        GoTo CNT
r1: End If

    Rem ***HIT THE TOP SIDE OF BRICK***
    If (Ball.left + Ball.Width) > Brick(Z).left And Ball.left < (Brick(Z).left + Brick(Z).Width) And (Ball.top + Ball.Height) > Brick(Z).top And (Ball.top + Ball.Height) < (Brick(Z).top + 150) And Brick(Z).Visible = True Then
        If BURN$ = "ON" Then GoTo t2
        
        If Brick(Z).Picture = Yellow.Picture Then Brick(Z).Visible = False
        If Brick(Z).Picture = Orange.Picture Then Brick(Z).Picture = Yellow.Picture
        If Brick(Z).Picture = Red.Picture Then Brick(Z).Picture = Orange.Picture
        If Brick(Z).Picture = Cyan.Picture Then Brick(Z).Picture = Red.Picture
        If Brick(Z).Picture = Green.Picture Then Brick(Z).Picture = Cyan.Picture
        If UD$ = "U" Then
            UD$ = "D"
            GoTo t1
        End If
        If UD$ = "D" Then
            UD$ = "U"
            GoTo t1
        End If
        GoTo t1
t2:     Brick(Z).Visible = False
        GoTo CNT
t1: End If

    Rem ***HIT THE BOTTOM SIDE OF BRICK***
    If (Ball.left + Ball.Width) > Brick(Z).left And Ball.left < (Brick(Z).left + Brick(Z).Width) And Ball.top < (Brick(Z).top + Brick(Z).Height) And Ball.top > ((Brick(Z).top + Brick(Z).Height) - 150) And Brick(Z).Visible = True Then
        If BURN$ = "ON" Then GoTo b2
        
        If Brick(Z).Picture = Yellow.Picture Then Brick(Z).Visible = False
        If Brick(Z).Picture = Orange.Picture Then Brick(Z).Picture = Yellow.Picture
        If Brick(Z).Picture = Red.Picture Then Brick(Z).Picture = Orange.Picture
        If Brick(Z).Picture = Cyan.Picture Then Brick(Z).Picture = Red.Picture
        If Brick(Z).Picture = Green.Picture Then Brick(Z).Picture = Cyan.Picture
        If UD$ = "U" Then
            UD$ = "D"
            GoTo b1
        End If
        If UD$ = "D" Then
            UD$ = "U"
            GoTo b1
        End If
        GoTo b1
b2:     Brick(Z).Visible = False
        GoTo CNT
b1: End If
' BANANAS IN PJs :-P
Next Z

CNT:
Rem ***REARRANGE POWERUPS AND BAD THINGS***

' We want the powerups and power downs to appear randomly around the "playing field", so we set
' them to run by "alarm clock" variables that make them rearrange themselves at certain intervals.
PWRUP = PWRUP + 1
BADTH = BADTH + 1
If PWRUP = PWRUPINT Then
    PWRUP = 0
    Z = Int(Rnd * 3) + 1
    ' Place a powerup on the screen
    If Z = 2 Or Z = 3 Then
        PowerUp.Visible = True
    End If
    ' Take the powerup off the screen
    If Z = 1 Then
        PowerUp.Visible = False
    End If
    ' Put the bad thing in a random position on the screen
    PowerUp.left = Int(Rnd * (Form1.Width - PowerUp.Width)) + 1
    PowerUp.top = Int(Rnd * (Form1.Width / 2)) + 1
End If
If BADTH = BADTHINT Then
    BADTH = 0
    Z = Int(Rnd * 3) + 1
    If Z = 2 Or Z = 3 Then
        BadThing.Visible = True
    End If
    If Z = 1 Then
        BadThing.Visible = False
    End If
    BadThing.left = Int(Rnd * (Form1.Width - BadThing.Width)) + 1
    BadThing.top = Int(Rnd * (Form1.Width / 2)) + 1
End If

Rem ***CHECK FOR COLLISIONS WITH POWERUPS***
BALLPOS = Int(Ball.left + (Ball.Width / 2))
If BALLPOS > PowerUp.left And BALLPOS < (PowerUp.left + PowerUp.Width) And Ball.top < (PowerUp.top + PowerUp.Height) And (Ball.top + Ball.Height) > PowerUp.top And PowerUp.Visible = True Then
    Sound1.FileName = CC + "powerup.wav"
    Z = Int(Rnd * 6) + 1
    
    ' Here are the good things, it is randomized what you get. Here's what I've put in. Feel free to
    ' add your own. If you come up with any good ones, E-Mail me your ideas, i'd love to hear them!
    If Z = 1 Then
        ' SPEED BALL: Makes the ball move at super speed for 10 seconds!
        ' Makes for some sweaty palms!
        ShowEvent ("SPEED BALL!")
        tmrEvents.Interval = 1
        COUNTDOWN = 10
        tmrWearoff.Enabled = True
        SPEED$ = "ON"
        Ball.Picture = SpeedBall.Picture
    End If
    If Z = 2 Then
        ' DOUBLE SIZE: Your paddle is now twice as large as it used to be!
        Paddle.Width = Paddle.Width * 2
        ShowEvent ("DOUBLE SIZE!")
    End If
    If Z = 3 Then
        ' INCINERATOR BALL: The ball passes through bricks, destroying them instantly, rather than
        ' bouncing off. This PU lasts for 5 seconds only.
        ShowEvent ("INCINERATOR!")
        COUNTDOWN = 5
        tmrWearoff.Enabled = True
        SPEED$ = "ON"
        BURN$ = "ON"
        Ball.Picture = Incinerator.Picture
    End If
    If Z = 4 Then
        ' 1-UP: Gives you one extra life.
        ShowEvent ("1-UP!")
        LIVES = LIVES + 1
        lblLives.Caption = "LIVES: " + Str(LIVES)
    End If
    If Z = 5 Then
        ' FORCE FIELD: For 10 seconds the ball cannot fall off the bottom of the screen. Just
        ' enough time to crack your knuckles befre getting back into it :-P
        ShowEvent ("Force Field!")
        FF = True
        ForceField.Visible = True
        COUNTDOWN = 10
        tmrWearoff.Enabled = True
    End If
    If Z = 6 Then
        ' THE FLYING PADDLE OF DOOM: For a whole 20 seconds, your paddle is no longer only
        ' restricted to the X-axis, and you can move it anywhere on the screen.
        ' A particularly nasty pickup when combined with DRUNK PADDLE!!!
        ShowEvent ("Flying Paddle!")
        FLY = True
        COUNTDOWN = 20
        tmrWearoff.Enabled = True
    End If
    PWRUP = 0
    PowerUp.Visible = False
    LR = LR * -1
End If

Rem ***CHECK FOR COLLISIONS WITH BAD THINGS***
BALLPOS = Int(Ball.left + (Ball.Width / 2))
If BALLPOS > BadThing.left And BALLPOS < (BadThing.left + BadThing.Width) And Ball.top < (BadThing.top + BadThing.Height) And (Ball.top + Ball.Height) > BadThing.top And BadThing.Visible = True Then
    Sound1.FileName = CC + "badthing.wav"
    Z = Int(Rnd * 5) + 1
    If Z = 1 Then
        ' SLOW BALL: For 10 seconds, your ball moves INCREDIBLY SLOW!
        ShowEvent ("SLOW BALL!")
        tmrEvents.Interval = 100
        COUNTDOWN = 10
        tmrWearoff.Enabled = True
    End If
    If Z = 2 Then
        ' PADDLE SHRINK: Pick this up and your paddle decreases in size by half.
        Paddle.Width = Int(Paddle.Width / 2)
        ShowEvent ("PADDLE SHRINK!")
    End If
    If Z = 3 Then
        ' INVISI-BALL: The ball becomes virtually invisible, making it only just barely visible!
        ShowEvent ("INVISI-BALL!")
        Ball.Picture = Invisiball.Picture
        COUNTDOWN = 10
        tmrWearoff.Enabled = True
    End If
    If Z = 4 Then
        ' DRUNK PADDLE: Reverses the movement of your mouse! You move left and the paddle moves
        ' right! Not pretty when combined with THE FLYING PADDLE OF DOOM!!!
        ShowEvent ("DRUNK PADDLE!")
        DRUNK = True
        COUNTDOWN = 10
        tmrWearoff.Enabled = True
    End If
    If Z = 5 Then
        ' GRENADE: The nastiest and probably the most entertaining of all the powerups. As soon as
        ' you pick up the grenade, the ball turns into a grenade and the countdown starts. You have
        ' 10 seconds in which to distance yourself from the grenade as much as possible. Coz when
        ' it goes off, it will either destroy YOU (if you are too close to it) or a hell of a lot
        ' of bricks (if you manage to pull it off) Sadistic, no?
        ShowEvent ("GRENADE!!!")
        GREN = 11
        PWRUPINT = 9999999
        BADTHINT = 9999999
        tmrGrenade.Enabled = True
        Ball.Picture = Grenade.Picture
        TickTock.FileName = CC + "grenade.wav"
    End If
    BADTH = 0
    BadThing.Visible = False
    LR = LR * -1
End If
End Sub

Private Sub tmrGrenade_Timer()

' The grenade sequence.
GREN = GREN - 1
If GREN = 0 Then
    Kaboom.top = (Ball.top - (Kaboom.Height / 2))
    Kaboom.left = (Ball.left - (Kaboom.Width / 2))
    Kaboom.Visible = True
    Dim BX
    Dim BY
    For Z = 1 To (BRICKS - 1)
        BX = (Brick(Z).left + (Brick(Z).Width / 2))
        BY = (Brick(Z).top + (Brick(Z).Height / 2))
        If BX > Kaboom.left And BX < (Kaboom.left + Kaboom.Width) And BY > Kaboom.top And BY < (Kaboom.top + Kaboom.Height) Then Brick(Z).Visible = False
    Next Z
    If (Paddle.left + (Paddle.Width / 2)) > Kaboom.left And (Paddle.left + (Paddle.Width / 2)) < (Kaboom.left + Kaboom.Width) And Paddle.top > Kaboom.top And Paddle.top < (Kaboom.top + Kaboom.Height) Then
        tmrEvents.Enabled = False
        tmrWearoff.Enabled = False
        MsgBox "You were destroyed by the grenade!"
        LIVES = LIVES - 1
        If LIVES = -1 Then
            MsgBox "No lives left! Game over!"
            End
        End If
    End If
    TickTock.Stop
    Sound1.FileName = CC + "kaboom.wav"
    tmrByByBoom.Enabled = True
    tmrGrenade.Enabled = False
    Ball.Picture = NormalBall.Picture
    PWRUPINT = 1000
    BADTHINT = 500
End If
tmrEventClear.Enabled = False
ShowEvent (Str(GREN))
End Sub

Private Sub tmrWearoff_Timer()
' Count down to the end of the powerup
COUNTDOWN = COUNTDOWN - 1
lblCountDown.Caption = Str(COUNTDOWN)

' If the countdown is over, cease all active powerups, except GRENADE (if active)
If COUNTDOWN >= 0 Then Exit Sub
lblCountDown.Caption = ""
tmrEvents.Interval = 10
tmrWearoff.Enabled = False
SPEED$ = "OFF"
BURN$ = "OFF"
Trail1.Visible = False
Trail2.Visible = False
Trail3.Visible = False
Ball.Picture = NormalBall.Picture
ForceField.Visible = False
FF = False
DRUNK = False
FLY = False
Paddle.top = 7695
End Sub
