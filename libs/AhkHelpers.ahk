Klik(X, Y, Button) { ; De Button moet tussen aanhalingstekens, bijv. "Right"
  Global ClientPID
  KlikX := % "x" . X
  KlikY := % "y" . Y
  SetControlDelay -1
  ControlClick, %KlikX% %KlikY%, ahk_pid %ClientPID%,,%Button%,, NA
}

TibiaActief() {
  Global ClientPID
  WinGet, active_ahk_pid, PID, A
  if active_ahk_pid = %ClientPID%
    Return True
  else
    Return False
}

Toets(InTeDrukkenToets) {
  Global ClientPID
  if TibiaActief() {
	  Send {%InTeDrukkenToets%}
	}
  else {
	  SplashTextOn,,, bla ; splashtext maakt om de een of andere reden een directx window ControlReceivable
	  SplashTextOff
	  ControlSend,,{%InTeDrukkenToets%}, ahk_pid %ClientPID%
	}
}
