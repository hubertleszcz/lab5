.686
.XMM
.model flat

public _dodaj_tablice
public _int2float
public _pm_jeden

.data 
	tab dd 4 dup (1.0)


.code
	_pm_jeden PROC
	push ebp
	mov ebp, esp
	push ebx
	push edi
	push esi

	mov ebx, [ebp+8]
	movups xmm5, [ebx]
	movups xmm4, tab

	ADDSUBPS xmm5, xmm4

	movups [ebx], xmm5

	pop esi
	pop edi
	pop ebx
	pop ebp
	ret
	_pm_jeden ENDP

	_dodaj_tablice PROC
	push ebp
	mov ebp, esp
	push ebx
	push edi
	push esi

	mov esi, [ebp+8]
	mov edi, [ebp+12]
	mov ebx, [ebp+16]

	movups xmm5, [esi]
	movups xmm6, [edi]

	PADDSB xmm5, xmm6

	movups [ebx], xmm5



	pop esi
	pop edi
	pop ebx
	pop ebp
	ret
	_dodaj_tablice ENDP

	_int2float PROC
	push ebp
	mov ebp, esp
	push ebx
	push edi
	push esi

	
	mov esi, [ebp+8]
	mov ebx, [ebp+12]

	movups xmm5, [esi]
	cvtpi2ps xmm5, qword PTR [esi]

	movups [ebx], xmm5

	pop esi
	pop edi
	pop ebx
	pop ebp
	ret
	_int2float ENDP

END