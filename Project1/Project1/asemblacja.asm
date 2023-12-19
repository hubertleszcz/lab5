.686
.model flat

public _srednia_harm
public _nowy_exp
.data

	suma dd 0
.code
	_nowy_exp PROC
	push ebp
	mov ebp, esp
	mov ecx, 20



	;od konca licze potegi na koproc
	;potem silnie
	;dziele
	;dodaje
	
	fild dword ptr suma

	petla:		
		mov edx, 1
		
		cmp ecx, 1
		je koniec
		fld dword ptr [ebp+8]
		kolejna_potega:
			fld dword ptr [ebp+8]
			fmulp st(1), st(0)
			inc edx
		cmp edx, ecx
		jb kolejna_potega
		mov edx, 1
		fld1
		silnia: push edx
			fild dword ptr [esp]
			add esp,4
			fmulp st(1), st(0)
			inc edx
		cmp edx, ecx
		jbe silnia
		fdivp st(1), st(0)
		faddp st(1), st(0)
	loop petla

	koniec:
		fld1
		faddp st(1), st(0)
		fadd dword ptr [ebp+8]

	pop ebp
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