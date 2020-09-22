Attribute VB_Name = "Module3"
Public Sub GetScreenRes(ByRef X As Long, ByRef Y As Long, Optional ByVal ReportStyle As enReportStyle)

       X = GetSystemMetrics(SM_CXSCREEN)
       Y = GetSystemMetrics(SM_CYSCREEN)

       If Not IsMissing(ReportStyle) Then

           If ReportStyle <> rsPixels Then
               X = X * Screen.TwipsPerPixelX
               Y = Y * Screen.TwipsPerPixelY

               If ReportStyle = rsInches Or ReportStyle = rsPoints Then
                   X = X \ TWIPS_PER_INCH
                   Y = Y \ TWIPS_PER_INCH

                   If ReportStyle = rsPoints Then
                       X = X * POINTS_PER_INCH
                       Y = Y * POINTS_PER_INCH
                   End If
               End If
           End If
       End If
End Sub

   Public Function PixelXToMickey(ByVal pixX As Long) As Long

       Dim X As Long
       Dim Y As Long
       Dim tX As Single
       Dim tpixX As Single
       Dim tMickeys As Single
       GetScreenRes X, Y
       tMickeys = MOUSE_MICKEYS
       tX = X
       tpixX = pixX
       PixelXToMickey = CLng((tMickeys / tX) * tpixX)
   End Function

   Public Function PixelYToMickey(ByVal pixY As Long) As Long

       Dim X As Long
       Dim Y As Long
       Dim tY As Single
       Dim tpixY As Single
       Dim tMickeys As Single
       GetScreenRes X, Y
       tMickeys = MOUSE_MICKEYS
       tY = Y
       tpixY = pixY
       PixelYToMickey = CLng((tMickeys / tY) * tpixY)
   End Function

   Public Sub M__MouseMove(ByRef xPixel As Long, ByRef yPixel As Long)

       Dim cbuttons As Long
       Dim dwExtraInfo As Long
       mouse_event MOUSEEVENTF_ABSOLUTE Or MOUSEEVENTF_MOVE, PixelXToMickey(xPixel), PixelYToMickey(yPixel), cbuttons, dwExtraInfo
   End Sub
   
   Public Function M_GetX() As Long

       Dim N As POINTAPI
       GetCursorPos N
       M_GetX = N.X
   End Function
   Public Function M_GetY() As Long

       Dim N As POINTAPI
       GetCursorPos N
       M_GetY = N.Y
   End Function

   Public Function M_GetCusorPos()
   
       Dim Pos As POINTAPI
       N = GetCursorPos(Pos)
       M_GetCusorPos = N
          
   End Function

   Public Sub M_LeftClick()

       M_LeftDown
       M_LeftUp
   End Sub

   Public Sub M_LeftDown()
       mouse_event WM_LBUTTONDOWN, 0, 0, 0, 0
   End Sub

   Public Sub M_LeftUp()

       mouse_event WM_LBUTTONUP, 0, 0, 0, 0
   End Sub

   Public Sub M_MiddleClick()

       M_MiddleDown
       M_MiddleUp
   End Sub

   Public Sub M_MiddleDown()

       mouse_event MOUSEEVENTF_MIDDLEDOWN, 0, 0, 0, 0
   End Sub

   Public Sub M_MiddleUp()

       mouse_event MOUSEEVENTF_MIDDLEUP, 0, 0, 0, 0
   End Sub

   Public Sub MoveMouse(xMove As Long, yMove As Long)

       mouse_event MOUSEEVENTF_MOVE, xMove, yMove, 0, 0
   End Sub

   Public Sub M_RightClick()

       M_RightDown
       M_RightUp
   End Sub

   Public Sub M_RightDown()

       mouse_event MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0
   End Sub

Public Sub M_RightUp()

       mouse_event MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0
       
   End Sub
  Public Sub M__SetMousePos(Xx As Long, Yy As Long)
  
     SetCursorPos Xx, Yy
     
     
   End Sub
Public Function M__Get_Window()


       Dim Pos As POINTAPI
       Call GetCursorPos(Pos)
       
       cursorPos% = WindowFromPoint(Pos.X, Pos.Y)
    
    M__Get_Window = cursorPos%


End Function


   Public Function M__CenterMouseOn(ByVal hwnd As Long) As Boolean


       Dim Xa As Long
       Dim Ya As Long
       Dim maxX As Long
       Dim maxY As Long
       Dim crect As Rect
       Dim rc As Long
       GetScreenRes maxX, maxY
       rc = GetWindowRect(hwnd, crect)
       
       If rc Then
           Xa = crect.left + ((crect.Right - crect.left) / 2)
           Ya = crect.top + ((crect.Bottom - crect.top) / 2)

           If (X >= 0 And X <= maxX) And (Ya >= 0 And Ya <= maxY) Then
               M__MouseMove Xa, Ya
               M__CenterMouseOn = True
           Else
               M__CenterMouseOn = False
           End If

       Else
           M_centermouseon = False
       End If


   End Function

   Public Function MouseFullClick(ByVal MBClick As enButtonToClick) As Boolean


       Dim cbuttons As Long
       Dim dwExtraInfo As Long
       Dim mevent As Long
       


       Select Case MBClick
           Case btcLeft
           mevent = MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_LEFTUP
           Case btcRight
           mevent = MOUSEEVENTF_RIGHTDOWN Or MOUSEEVENTF_RIGHTUP
           Case btcMiddle
           mevent = MOUSEEVENTF_MIDDLEDOWN Or MOUSEEVENTF_MIDDLEUP
           Case Else
           MouseFullClick = False
           Exit Function
       End Select


   mouse_event mevent, 0&, 0&, cbuttons, dwExtraInfo
   MouseFullClick = True

   End Function




