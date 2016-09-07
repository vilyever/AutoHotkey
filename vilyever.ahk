#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & h:: Send, {Left}      	                				 ;|
;-----------------------------------o                                ;|
CapsLock & j:: Send, {Down}                                	         ;|
;-----------------------------------o                                ;|
CapsLock & k:: Send, {Up}             		                         ;|
;-----------------------------------o                                ;|
CapsLock & l:: Send, {Right}      		                             ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + i |  Home                          ;|
;                      CapsLock + o |  End                           ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & i:: Send, {Home}   		                                 ;|
;-----------------------------------o                                ;|
CapsLock & o:: Send, {End}    		                                 ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                            CapsLock Editor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + z  |  Ctrl + z (Cancel)             ;|
;                     CapsLock + x  |  Ctrl + x (Cut)                ;|
;                     CapsLock + c  |  Ctrl + c (Copy)               ;|
;                     CapsLock + v  |  Ctrl + z (Paste)              ;|
;                     CapsLock + a  |  Ctrl + a (Select All)         ;|
;                     CapsLock + y  |  Ctrl + z (Yeild)              ;|
;                     CapsLock + w  |  Ctrl + Right(Move as [vim: w]);|
;                     CapsLock + b  |  Ctrl + Left (Move as [vim: b]);|
;-----------------------------------o---------------------------------o
CapsLock & z:: Send, ^z                                              ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, ^v                                              ;|
CapsLock & a:: Send, ^a                                              ;|
CapsLock & y:: Send, ^y                                              ;|
CapsLock & w:: Send, ^{Right}                                        ;|
CapsLock & b:: Send, ^{Left}                                         ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + u |  PageUp                        ;|
;                      CapsLock + p |  PageDown                      ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & u:: Send, {PgUp}  		                                 ;|
;-----------------------------------o                                ;|
CapsLock & p:: Send, {PgDn}                                          ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + d  |  Delete;|
;-----------------------------------o---------------------------------o
CapsLock & d:: Send, {Del}                                           ;|
;---------------------------------------------------------------------o
 
_sendLetter(letter) {
	oldClip = %Clipboard%  			;; 把目前的剪貼簿內容先存起來
	clipboard = %letter%            ;; 把要輸出的文字存入剪貼簿
	Send ^v                         ;; 送出Ctrl+V貼上剪貼簿內容
	Clipboard = %oldClip%   		;; 再把剪貼簿還原
  }  ;; _sendLetter
  
  
^p:: _sendLetter("中文的字符串是什么啊哦为即佛就为就覅哦为utiwejiojiog")

;`;:: MouseClick, left, 1180, 745
;':: MouseClick, left, 895, 800
;`:: MouseClick, left, 960, 845

