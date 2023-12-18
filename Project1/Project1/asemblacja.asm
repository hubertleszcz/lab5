.686
.model flat

public _srednia_harm
public _nowy_exp
.data

	suma dd 0
.code
	_nowy_exp PROC




	ret
	_nowy_exp ENDP
	_srednia_harm PROC
	push ebp
	mov ebp, esp
	push ebx

	;wczytaj n
	;po kolei wczytuj tab[n]
	;rob odwrotnosci
	;sumuj odwrotnosci
	;n/suma

	fild dword ptr [ebp+12]
	mov ebx, [ebp+8]	
	mov ecx, [ebp+12]

	fld dword ptr suma

	petla:fld1
		fld dword ptr [ebx]
		add ebx, 4
		fdivp st(1), st(0)
		faddp st(1), st(0)
		loop petla


	fdivp st(1), st(0)

	pop ebx
	pop ebp
	ret
	_srednia_harm ENDP


END