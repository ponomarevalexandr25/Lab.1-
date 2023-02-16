.686
.model flat,stdcall
.stack 100h
.data
X dw 23
Y dw 6
z dw 16
M dw ?
.code
ExitProcess PROTO STDCALL :DWORD
Start:
mov ax, X
sal ax, 3
mul z
sub ax,y
mov bx, y
sal bx, 3
and bx,x
and ax,bx
exit:
Invoke ExitProcess,1
End Start