; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?_FreeMemory@@3_KA				; _FreeMemory
PUBLIC	?_ReservedMemory@@3_KA				; _ReservedMemory
PUBLIC	?_UsedMemory@@3_KA				; _UsedMemory
PUBLIC	?_RamBitmapIndex@@3_KA				; _RamBitmapIndex
PUBLIC	?_TotalRam@@3_KA				; _TotalRam
PUBLIC	?_BitmapSize@@3_KA				; _BitmapSize
PUBLIC	?_HigherHalf@@3_NA				; _HigherHalf
PUBLIC	?RamBitmap@@3VBitmap@@A				; RamBitmap
_BSS	SEGMENT
?_FreeMemory@@3_KA DQ 01H DUP (?)			; _FreeMemory
?_ReservedMemory@@3_KA DQ 01H DUP (?)			; _ReservedMemory
?_UsedMemory@@3_KA DQ 01H DUP (?)			; _UsedMemory
?_RamBitmapIndex@@3_KA DQ 01H DUP (?)			; _RamBitmapIndex
?_TotalRam@@3_KA DQ 01H DUP (?)				; _TotalRam
?_BitmapSize@@3_KA DQ 01H DUP (?)			; _BitmapSize
?_HigherHalf@@3_NA DB 01H DUP (?)			; _HigherHalf
	ALIGN	4

?RamBitmap@@3VBitmap@@A DB 010H DUP (?)			; RamBitmap
_BSS	ENDS
CONST	SEGMENT
$SG3599	DB	'Kernel Panic!!! No more physical memory ', 0aH, 00H
CONST	ENDS
PUBLIC	?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuPmmngrInitialize
PUBLIC	AuPmmngrAlloc
PUBLIC	AuPmmngrAllocBlocks
PUBLIC	AuPmmngrFree
PUBLIC	AuPmmngrFreeBlocks
PUBLIC	P2V
PUBLIC	V2P
PUBLIC	?AuPmmngrMoveHigher@@YAXXZ			; AuPmmngrMoveHigher
PUBLIC	??ABitmap@@QEAA_N_K@Z				; Bitmap::operator[]
PUBLIC	?Set@Bitmap@@QEAA_N_K_N@Z			; Bitmap::Set
PUBLIC	?AuPmmngrInitBitmap@@YAX_KPEAX@Z		; AuPmmngrInitBitmap
PUBLIC	?AuPmmngrLockPage@@YAX_K@Z			; AuPmmngrLockPage
PUBLIC	?AuPmmngrLockPages@@YAXPEAX_K@Z			; AuPmmngrLockPages
PUBLIC	?AuPmmngrUnreservePage@@YAXPEAX@Z		; AuPmmngrUnreservePage
EXTRN	x64_cli:PROC
EXTRN	AuTextOut:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
pdata	SEGMENT
$pdata$?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD imagerel $LN20
	DD	imagerel $LN20+747
	DD	imagerel $unwind$?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z
$pdata$AuPmmngrAlloc DD imagerel $LN9
	DD	imagerel $LN9+147
	DD	imagerel $unwind$AuPmmngrAlloc
$pdata$AuPmmngrAllocBlocks DD imagerel $LN6
	DD	imagerel $LN6+65
	DD	imagerel $unwind$AuPmmngrAllocBlocks
$pdata$AuPmmngrFree DD imagerel $LN6
	DD	imagerel $LN6+147
	DD	imagerel $unwind$AuPmmngrFree
$pdata$AuPmmngrFreeBlocks DD imagerel $LN6
	DD	imagerel $LN6+86
	DD	imagerel $unwind$AuPmmngrFreeBlocks
$pdata$?AuPmmngrMoveHigher@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+35
	DD	imagerel $unwind$?AuPmmngrMoveHigher@@YAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??ABitmap@@QEAA_N_K@Z DD imagerel $LN5
	DD	imagerel $LN5+145
	DD	imagerel $unwind$??ABitmap@@QEAA_N_K@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?Set@Bitmap@@QEAA_N_K_N@Z DD imagerel $LN5
	DD	imagerel $LN5+213
	DD	imagerel $unwind$?Set@Bitmap@@QEAA_N_K_N@Z
pdata	ENDS
pdata	SEGMENT
$pdata$?AuPmmngrInitBitmap@@YAX_KPEAX@Z DD imagerel $LN6
	DD	imagerel $LN6+88
	DD	imagerel $unwind$?AuPmmngrInitBitmap@@YAX_KPEAX@Z
$pdata$?AuPmmngrLockPage@@YAX_K@Z DD imagerel $LN5
	DD	imagerel $LN5+122
	DD	imagerel $unwind$?AuPmmngrLockPage@@YAX_K@Z
$pdata$?AuPmmngrLockPages@@YAXPEAX_K@Z DD imagerel $LN6
	DD	imagerel $LN6+92
	DD	imagerel $unwind$?AuPmmngrLockPages@@YAXPEAX_K@Z
$pdata$?AuPmmngrUnreservePage@@YAXPEAX@Z DD imagerel $LN6
	DD	imagerel $LN6+147
	DD	imagerel $unwind$?AuPmmngrUnreservePage@@YAXPEAX@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?Set@Bitmap@@QEAA_N_K_N@Z DD 011301H
	DD	02213H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??ABitmap@@QEAA_N_K@Z DD 010e01H
	DD	0420eH
xdata	ENDS
xdata	SEGMENT
$unwind$?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD 020c01H
	DD	013010cH
$unwind$AuPmmngrAlloc DD 010401H
	DD	04204H
$unwind$AuPmmngrAllocBlocks DD 010801H
	DD	06208H
$unwind$AuPmmngrFree DD 010901H
	DD	06209H
$unwind$AuPmmngrFreeBlocks DD 010d01H
	DD	0620dH
$unwind$?AuPmmngrMoveHigher@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuPmmngrInitBitmap@@YAX_KPEAX@Z DD 010e01H
	DD	0220eH
$unwind$?AuPmmngrLockPage@@YAX_K@Z DD 010901H
	DD	06209H
$unwind$?AuPmmngrLockPages@@YAXPEAX_K@Z DD 010e01H
	DD	0620eH
$unwind$?AuPmmngrUnreservePage@@YAXPEAX@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
Index$ = 32
Address$ = 64
?AuPmmngrUnreservePage@@YAXPEAX@Z PROC			; AuPmmngrUnreservePage

; 126  : void AuPmmngrUnreservePage(void* Address) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 127  : 	uint64_t Index = (uint64_t)Address / 4096;

	xor	edx, edx
	mov	rax, QWORD PTR Address$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	QWORD PTR Index$[rsp], rax

; 128  : 	if (RamBitmap[Index] == false) return;

	mov	rdx, QWORD PTR Index$[rsp]
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	??ABitmap@@QEAA_N_K@Z			; Bitmap::operator[]
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN3@AuPmmngrUn
	jmp	SHORT $LN4@AuPmmngrUn
$LN3@AuPmmngrUn:

; 129  : 	if (RamBitmap.Set(Index, false)) {

	xor	r8d, r8d
	mov	rdx, QWORD PTR Index$[rsp]
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	?Set@Bitmap@@QEAA_N_K_N@Z		; Bitmap::Set
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN2@AuPmmngrUn

; 130  : 		_FreeMemory++;

	mov	rax, QWORD PTR ?_FreeMemory@@3_KA	; _FreeMemory
	inc	rax
	mov	QWORD PTR ?_FreeMemory@@3_KA, rax	; _FreeMemory

; 131  : 		_ReservedMemory--;

	mov	rax, QWORD PTR ?_ReservedMemory@@3_KA	; _ReservedMemory
	dec	rax
	mov	QWORD PTR ?_ReservedMemory@@3_KA, rax	; _ReservedMemory

; 132  : 		if (_RamBitmapIndex > Index) _RamBitmapIndex = Index;

	mov	rax, QWORD PTR Index$[rsp]
	cmp	QWORD PTR ?_RamBitmapIndex@@3_KA, rax	; _RamBitmapIndex
	jbe	SHORT $LN1@AuPmmngrUn
	mov	rax, QWORD PTR Index$[rsp]
	mov	QWORD PTR ?_RamBitmapIndex@@3_KA, rax	; _RamBitmapIndex
$LN1@AuPmmngrUn:
$LN2@AuPmmngrUn:
$LN4@AuPmmngrUn:

; 133  : 	}
; 134  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuPmmngrUnreservePage@@YAXPEAX@Z ENDP			; AuPmmngrUnreservePage
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
i$1 = 32
addr$ = 40
Address$ = 64
Size$ = 72
?AuPmmngrLockPages@@YAXPEAX_K@Z PROC			; AuPmmngrLockPages

; 116  : void AuPmmngrLockPages(void *Address, size_t Size) {

$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 117  : 	uint64_t addr = (uint64_t)Address;

	mov	rax, QWORD PTR Address$[rsp]
	mov	QWORD PTR addr$[rsp], rax

; 118  : 	for (int i = 0; i < Size; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuPmmngrLo
$LN2@AuPmmngrLo:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuPmmngrLo:
	movsxd	rax, DWORD PTR i$1[rsp]
	cmp	rax, QWORD PTR Size$[rsp]
	jae	SHORT $LN1@AuPmmngrLo

; 119  : 		AuPmmngrLockPage(addr + i * 4096);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	rcx, rax
	call	?AuPmmngrLockPage@@YAX_K@Z		; AuPmmngrLockPage
	jmp	SHORT $LN2@AuPmmngrLo
$LN1@AuPmmngrLo:

; 120  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuPmmngrLockPages@@YAXPEAX_K@Z ENDP			; AuPmmngrLockPages
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
Index$ = 32
Address$ = 64
?AuPmmngrLockPage@@YAX_K@Z PROC				; AuPmmngrLockPage

; 102  : void AuPmmngrLockPage(uint64_t Address) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 103  : 	uint64_t Index = (Address / 4096);

	xor	edx, edx
	mov	rax, QWORD PTR Address$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	QWORD PTR Index$[rsp], rax

; 104  : 	if (RamBitmap[Index] == true) return;

	mov	rdx, QWORD PTR Index$[rsp]
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	??ABitmap@@QEAA_N_K@Z			; Bitmap::operator[]
	movzx	eax, al
	cmp	eax, 1
	jne	SHORT $LN2@AuPmmngrLo
	jmp	SHORT $LN3@AuPmmngrLo
$LN2@AuPmmngrLo:

; 105  : 	if (RamBitmap.Set(Index, true)) {

	mov	r8b, 1
	mov	rdx, QWORD PTR Index$[rsp]
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	?Set@Bitmap@@QEAA_N_K_N@Z		; Bitmap::Set
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN1@AuPmmngrLo

; 106  : 		_FreeMemory--;

	mov	rax, QWORD PTR ?_FreeMemory@@3_KA	; _FreeMemory
	dec	rax
	mov	QWORD PTR ?_FreeMemory@@3_KA, rax	; _FreeMemory

; 107  : 		_ReservedMemory++;

	mov	rax, QWORD PTR ?_ReservedMemory@@3_KA	; _ReservedMemory
	inc	rax
	mov	QWORD PTR ?_ReservedMemory@@3_KA, rax	; _ReservedMemory
$LN1@AuPmmngrLo:
$LN3@AuPmmngrLo:

; 108  : 	}
; 109  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuPmmngrLockPage@@YAX_K@Z ENDP				; AuPmmngrLockPage
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
i$1 = 0
BitmapSize$ = 32
Buffer$ = 40
?AuPmmngrInitBitmap@@YAX_KPEAX@Z PROC			; AuPmmngrInitBitmap

; 89   : void AuPmmngrInitBitmap(size_t BitmapSize, void* Buffer) {

$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 90   : 	RamBitmap.Size = BitmapSize;

	mov	rax, QWORD PTR BitmapSize$[rsp]
	mov	QWORD PTR ?RamBitmap@@3VBitmap@@A, rax

; 91   : 	RamBitmap.Buffer = (uint8_t*)Buffer;

	mov	rax, QWORD PTR Buffer$[rsp]
	mov	QWORD PTR ?RamBitmap@@3VBitmap@@A+8, rax

; 92   : 
; 93   : 	for (int i = 0; i < BitmapSize; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuPmmngrIn
$LN2@AuPmmngrIn:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuPmmngrIn:
	movsxd	rax, DWORD PTR i$1[rsp]
	cmp	rax, QWORD PTR BitmapSize$[rsp]
	jae	SHORT $LN1@AuPmmngrIn

; 94   : 		*(uint8_t*)(RamBitmap.Buffer + i) = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ?RamBitmap@@3VBitmap@@A+8
	mov	BYTE PTR [rcx+rax], 0
	jmp	SHORT $LN2@AuPmmngrIn
$LN1@AuPmmngrIn:

; 95   : 
; 96   : }

	add	rsp, 24
	ret	0
?AuPmmngrInitBitmap@@YAX_KPEAX@Z ENDP			; AuPmmngrInitBitmap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
;	COMDAT ?Set@Bitmap@@QEAA_N_K_N@Z
_TEXT	SEGMENT
BitIndexer$ = 0
BitIndex$ = 1
tv145 = 4
ByteIndex$ = 8
this$ = 32
index$ = 40
value$ = 48
?Set@Bitmap@@QEAA_N_K_N@Z PROC				; Bitmap::Set, COMDAT

; 67   : 	bool Set(uint64_t index, bool value) {

$LN5:
	mov	BYTE PTR [rsp+24], r8b
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 68   : 		if (index > Size * 8) return false;

	mov	rax, QWORD PTR this$[rsp]
	mov	rax, QWORD PTR [rax]
	shl	rax, 3
	cmp	QWORD PTR index$[rsp], rax
	jbe	SHORT $LN2@Set
	xor	al, al
	jmp	$LN3@Set
$LN2@Set:

; 69   : 		uint64_t ByteIndex = index / 8;

	xor	edx, edx
	mov	rax, QWORD PTR index$[rsp]
	mov	ecx, 8
	div	rcx
	mov	QWORD PTR ByteIndex$[rsp], rax

; 70   : 		uint8_t BitIndex = index % 8;

	xor	edx, edx
	mov	rax, QWORD PTR index$[rsp]
	mov	ecx, 8
	div	rcx
	mov	rax, rdx
	mov	BYTE PTR BitIndex$[rsp], al

; 71   : 		uint8_t BitIndexer = 0x80 >> BitIndex;

	movzx	eax, BYTE PTR BitIndex$[rsp]
	mov	ecx, 128				; 00000080H
	mov	DWORD PTR tv145[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv145[rsp]
	sar	eax, cl
	mov	BYTE PTR BitIndexer$[rsp], al

; 72   : 
; 73   : 		Buffer[ByteIndex] &= ~BitIndexer;

	mov	rax, QWORD PTR this$[rsp]
	mov	rax, QWORD PTR [rax+8]
	movzx	ecx, BYTE PTR BitIndexer$[rsp]
	not	ecx
	mov	rdx, QWORD PTR ByteIndex$[rsp]
	movzx	eax, BYTE PTR [rax+rdx]
	and	eax, ecx
	mov	rcx, QWORD PTR this$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rdx, QWORD PTR ByteIndex$[rsp]
	mov	BYTE PTR [rcx+rdx], al

; 74   : 		if (value)

	movzx	eax, BYTE PTR value$[rsp]
	test	eax, eax
	je	SHORT $LN1@Set

; 75   : 			Buffer[ByteIndex] |= BitIndexer;

	mov	rax, QWORD PTR this$[rsp]
	mov	rax, QWORD PTR [rax+8]
	movzx	ecx, BYTE PTR BitIndexer$[rsp]
	mov	rdx, QWORD PTR ByteIndex$[rsp]
	movzx	eax, BYTE PTR [rax+rdx]
	or	eax, ecx
	mov	rcx, QWORD PTR this$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rdx, QWORD PTR ByteIndex$[rsp]
	mov	BYTE PTR [rcx+rdx], al
$LN1@Set:

; 76   : 
; 77   : 		return true;

	mov	al, 1
$LN3@Set:

; 78   : 	}

	add	rsp, 24
	ret	0
?Set@Bitmap@@QEAA_N_K_N@Z ENDP				; Bitmap::Set
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
;	COMDAT ??ABitmap@@QEAA_N_K@Z
_TEXT	SEGMENT
BitIndexer$ = 0
tv92 = 4
BitIndex$ = 8
ByteIndex$ = 16
this$ = 48
index$ = 56
??ABitmap@@QEAA_N_K@Z PROC				; Bitmap::operator[], COMDAT

; 54   : 	bool operator[] (uint64_t index) {

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 55   : 		if (index > Size * 8) return false;

	mov	rax, QWORD PTR this$[rsp]
	mov	rax, QWORD PTR [rax]
	shl	rax, 3
	cmp	QWORD PTR index$[rsp], rax
	jbe	SHORT $LN2@operator
	xor	al, al
	jmp	SHORT $LN3@operator
$LN2@operator:

; 56   : 		uint64_t ByteIndex = index / 8;

	xor	edx, edx
	mov	rax, QWORD PTR index$[rsp]
	mov	ecx, 8
	div	rcx
	mov	QWORD PTR ByteIndex$[rsp], rax

; 57   : 		uint64_t BitIndex = index % 8;

	xor	edx, edx
	mov	rax, QWORD PTR index$[rsp]
	mov	ecx, 8
	div	rcx
	mov	rax, rdx
	mov	QWORD PTR BitIndex$[rsp], rax

; 58   : 		uint8_t BitIndexer = 0x80 >> BitIndex;

	mov	rax, QWORD PTR BitIndex$[rsp]
	mov	ecx, 128				; 00000080H
	mov	DWORD PTR tv92[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv92[rsp]
	sar	eax, cl
	mov	BYTE PTR BitIndexer$[rsp], al

; 59   : 
; 60   : 		if ((Buffer[ByteIndex] & BitIndexer) > 0) {

	mov	rax, QWORD PTR this$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR ByteIndex$[rsp]
	movzx	eax, BYTE PTR [rax+rcx]
	movzx	ecx, BYTE PTR BitIndexer$[rsp]
	and	eax, ecx
	test	eax, eax
	jle	SHORT $LN1@operator

; 61   : 			return true;

	mov	al, 1
	jmp	SHORT $LN3@operator
$LN1@operator:

; 62   : 		}
; 63   : 
; 64   : 		return false;

	xor	al, al
$LN3@operator:

; 65   : 	}

	add	rsp, 40					; 00000028H
	ret	0
??ABitmap@@QEAA_N_K@Z ENDP				; Bitmap::operator[]
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
?AuPmmngrMoveHigher@@YAXXZ PROC				; AuPmmngrMoveHigher

; 289  : void AuPmmngrMoveHigher() {

$LN3:
	sub	rsp, 40					; 00000028H

; 290  : 	_HigherHalf = true;

	mov	BYTE PTR ?_HigherHalf@@3_NA, 1		; _HigherHalf

; 291  : 	RamBitmap.Buffer = (uint8_t*)P2V((uint64_t)RamBitmap.Buffer);

	mov	rcx, QWORD PTR ?RamBitmap@@3VBitmap@@A+8
	call	P2V
	mov	QWORD PTR ?RamBitmap@@3VBitmap@@A+8, rax

; 292  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuPmmngrMoveHigher@@YAXXZ ENDP				; AuPmmngrMoveHigher
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
vaddr$ = 8
V2P	PROC

; 278  : uint64_t V2P(uint64_t vaddr) {

	mov	QWORD PTR [rsp+8], rcx

; 279  : 	if (_HigherHalf)

	movzx	eax, BYTE PTR ?_HigherHalf@@3_NA	; _HigherHalf
	test	eax, eax
	je	SHORT $LN2@V2P

; 280  : 		return (vaddr - PHYSICAL_MEM_BASE);

	mov	rax, 140737488355328			; 0000800000000000H
	mov	rcx, QWORD PTR vaddr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	jmp	SHORT $LN3@V2P

; 281  : 	else

	jmp	SHORT $LN1@V2P
$LN2@V2P:

; 282  : 		return vaddr;

	mov	rax, QWORD PTR vaddr$[rsp]
$LN1@V2P:
$LN3@V2P:

; 283  : }

	ret	0
V2P	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
addr$ = 8
P2V	PROC

; 267  : uint64_t P2V(uint64_t addr) {

	mov	QWORD PTR [rsp+8], rcx

; 268  : 	if (_HigherHalf)

	movzx	eax, BYTE PTR ?_HigherHalf@@3_NA	; _HigherHalf
	test	eax, eax
	je	SHORT $LN2@P2V

; 269  : 		return (PHYSICAL_MEM_BASE + addr);

	mov	rax, 140737488355328			; 0000800000000000H
	mov	rcx, QWORD PTR addr$[rsp]
	sub	rcx, rax
	mov	rax, rcx
	jmp	SHORT $LN3@P2V

; 270  : 	else

	jmp	SHORT $LN1@P2V
$LN2@P2V:

; 271  : 		return addr;

	mov	rax, QWORD PTR addr$[rsp]
$LN1@P2V:
$LN3@P2V:

; 272  : }

	ret	0
P2V	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
i$1 = 32
Address$ = 40
Addr$ = 64
Count$ = 72
AuPmmngrFreeBlocks PROC

; 255  : void AuPmmngrFreeBlocks(void* Addr, int Count) {

$LN6:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 256  : 	uint64_t Address = (uint64_t)Addr;

	mov	rax, QWORD PTR Addr$[rsp]
	mov	QWORD PTR Address$[rsp], rax

; 257  : 	for (uint32_t i = 0; i < Count; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuPmmngrFr
$LN2@AuPmmngrFr:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuPmmngrFr:
	mov	eax, DWORD PTR Count$[rsp]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN1@AuPmmngrFr

; 258  : 		AuPmmngrFree((void*)Address);

	mov	rcx, QWORD PTR Address$[rsp]
	call	AuPmmngrFree

; 259  : 		Address += 0x1000;

	mov	rax, QWORD PTR Address$[rsp]
	add	rax, 4096				; 00001000H
	mov	QWORD PTR Address$[rsp], rax

; 260  : 	}

	jmp	SHORT $LN2@AuPmmngrFr
$LN1@AuPmmngrFr:

; 261  : }

	add	rsp, 56					; 00000038H
	ret	0
AuPmmngrFreeBlocks ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
Index$ = 32
Address$ = 64
AuPmmngrFree PROC

; 238  : void AuPmmngrFree(void* Address) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 239  : 	//uint64_t ShiftAddr = (uint64_t)Address >> PAGE_SHIFT;
; 240  : 	uint64_t Index = (uint64_t)Address / 4096;

	xor	edx, edx
	mov	rax, QWORD PTR Address$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	QWORD PTR Index$[rsp], rax

; 241  : 	if (RamBitmap[Index] == false) return;

	mov	rdx, QWORD PTR Index$[rsp]
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	??ABitmap@@QEAA_N_K@Z			; Bitmap::operator[]
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN3@AuPmmngrFr
	jmp	SHORT $LN4@AuPmmngrFr
$LN3@AuPmmngrFr:

; 242  : 	if (RamBitmap.Set(Index, false)) {

	xor	r8d, r8d
	mov	rdx, QWORD PTR Index$[rsp]
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	?Set@Bitmap@@QEAA_N_K_N@Z		; Bitmap::Set
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN2@AuPmmngrFr

; 243  : 		_FreeMemory++;

	mov	rax, QWORD PTR ?_FreeMemory@@3_KA	; _FreeMemory
	inc	rax
	mov	QWORD PTR ?_FreeMemory@@3_KA, rax	; _FreeMemory

; 244  : 		_UsedMemory--;

	mov	rax, QWORD PTR ?_UsedMemory@@3_KA	; _UsedMemory
	dec	rax
	mov	QWORD PTR ?_UsedMemory@@3_KA, rax	; _UsedMemory

; 245  : 		if (_RamBitmapIndex > Index)

	mov	rax, QWORD PTR Index$[rsp]
	cmp	QWORD PTR ?_RamBitmapIndex@@3_KA, rax	; _RamBitmapIndex
	jbe	SHORT $LN1@AuPmmngrFr

; 246  : 			_RamBitmapIndex = Index;

	mov	rax, QWORD PTR Index$[rsp]
	mov	QWORD PTR ?_RamBitmapIndex@@3_KA, rax	; _RamBitmapIndex
$LN1@AuPmmngrFr:
$LN2@AuPmmngrFr:
$LN4@AuPmmngrFr:

; 247  : 	}
; 248  : }

	add	rsp, 56					; 00000038H
	ret	0
AuPmmngrFree ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
i$1 = 32
First$ = 40
num$ = 64
AuPmmngrAllocBlocks PROC

; 226  : void* AuPmmngrAllocBlocks(int num) {

$LN6:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 227  : 	void* First = AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR First$[rsp], rax

; 228  : 	for (int i = 1; i < num; i++)

	mov	DWORD PTR i$1[rsp], 1
	jmp	SHORT $LN3@AuPmmngrAl
$LN2@AuPmmngrAl:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuPmmngrAl:
	mov	eax, DWORD PTR num$[rsp]
	cmp	DWORD PTR i$1[rsp], eax
	jge	SHORT $LN1@AuPmmngrAl

; 229  : 		AuPmmngrAlloc();

	call	AuPmmngrAlloc
	jmp	SHORT $LN2@AuPmmngrAl
$LN1@AuPmmngrAl:

; 230  : 
; 231  : 	return First;

	mov	rax, QWORD PTR First$[rsp]

; 232  : }

	add	rsp, 56					; 00000038H
	ret	0
AuPmmngrAllocBlocks ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
AuPmmngrAlloc PROC

; 208  : void* AuPmmngrAlloc() {

$LN9:
	sub	rsp, 40					; 00000028H

; 209  : 	for (; _RamBitmapIndex < RamBitmap.Size * 8; _RamBitmapIndex++) {

	jmp	SHORT $LN6@AuPmmngrAl
$LN5@AuPmmngrAl:
	mov	rax, QWORD PTR ?_RamBitmapIndex@@3_KA	; _RamBitmapIndex
	inc	rax
	mov	QWORD PTR ?_RamBitmapIndex@@3_KA, rax	; _RamBitmapIndex
$LN6@AuPmmngrAl:
	mov	rax, QWORD PTR ?RamBitmap@@3VBitmap@@A
	shl	rax, 3
	cmp	QWORD PTR ?_RamBitmapIndex@@3_KA, rax	; _RamBitmapIndex
	jae	SHORT $LN4@AuPmmngrAl

; 210  : 		if (RamBitmap[_RamBitmapIndex] == true) continue;

	mov	rdx, QWORD PTR ?_RamBitmapIndex@@3_KA	; _RamBitmapIndex
	lea	rcx, OFFSET FLAT:?RamBitmap@@3VBitmap@@A ; RamBitmap
	call	??ABitmap@@QEAA_N_K@Z			; Bitmap::operator[]
	movzx	eax, al
	cmp	eax, 1
	jne	SHORT $LN3@AuPmmngrAl
	jmp	SHORT $LN5@AuPmmngrAl
$LN3@AuPmmngrAl:

; 211  : 		AuPmmngrLockPage(_RamBitmapIndex * 4096);

	imul	rax, QWORD PTR ?_RamBitmapIndex@@3_KA, 4096 ; _RamBitmapIndex, 00001000H
	mov	rcx, rax
	call	?AuPmmngrLockPage@@YAX_K@Z		; AuPmmngrLockPage

; 212  : 		_UsedMemory++;

	mov	rax, QWORD PTR ?_UsedMemory@@3_KA	; _UsedMemory
	inc	rax
	mov	QWORD PTR ?_UsedMemory@@3_KA, rax	; _UsedMemory

; 213  : 		return (void*)(_RamBitmapIndex * 4096);

	imul	rax, QWORD PTR ?_RamBitmapIndex@@3_KA, 4096 ; _RamBitmapIndex, 00001000H
	jmp	SHORT $LN7@AuPmmngrAl

; 214  : 	}

	jmp	SHORT $LN5@AuPmmngrAl
$LN4@AuPmmngrAl:

; 215  : 
; 216  : 	x64_cli();

	call	x64_cli

; 217  : 	AuTextOut("Kernel Panic!!! No more physical memory \n");

	lea	rcx, OFFSET FLAT:$SG3599
	call	AuTextOut
$LN2@AuPmmngrAl:

; 218  : 	for (;;);

	jmp	SHORT $LN2@AuPmmngrAl
$LN7@AuPmmngrAl:

; 219  : }

	add	rsp, 40					; 00000028H
	ret	0
AuPmmngrAlloc ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\pmmngr.cpp
_TEXT	SEGMENT
AllocCount$ = 32
i$1 = 40
i$2 = 48
EfiMem$3 = 56
j$4 = 64
BitmapArea$ = 72
i$5 = 80
EfiMem$6 = 88
AllocStack$ = 96
MemMapEntries$ = 104
SMPAddress$ = 112
BitmapSize$ = 120
PhysStart$7 = 128
Address$8 = 136
info$ = 160
?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z PROC	; AuPmmngrInitialize

; 141  : void AuPmmngrInitialize(KERNEL_BOOT_INFO *info) {

$LN20:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 152				; 00000098H

; 142  : 
; 143  : 	_FreeMemory = 0;

	mov	QWORD PTR ?_FreeMemory@@3_KA, 0		; _FreeMemory

; 144  : 	_BitmapSize = 0;

	mov	QWORD PTR ?_BitmapSize@@3_KA, 0		; _BitmapSize

; 145  : 	_TotalRam = 0;

	mov	QWORD PTR ?_TotalRam@@3_KA, 0		; _TotalRam

; 146  : 	_RamBitmapIndex = 0;

	mov	QWORD PTR ?_RamBitmapIndex@@3_KA, 0	; _RamBitmapIndex

; 147  : 
; 148  : 	uint64_t MemMapEntries = info->mem_map_size / info->descriptor_size;

	xor	edx, edx
	mov	rax, QWORD PTR info$[rsp]
	mov	rax, QWORD PTR [rax+36]
	mov	rcx, QWORD PTR info$[rsp]
	div	QWORD PTR [rcx+28]
	mov	QWORD PTR MemMapEntries$[rsp], rax

; 149  : 	void* BitmapArea = 0;

	mov	QWORD PTR BitmapArea$[rsp], 0

; 150  : 
; 151  : 	/* Scan a suitable area for the bitmap */
; 152  : 	for (size_t i = 0; i < MemMapEntries; i++) {

	mov	QWORD PTR i$5[rsp], 0
	jmp	SHORT $LN17@AuPmmngrIn
$LN16@AuPmmngrIn:
	mov	rax, QWORD PTR i$5[rsp]
	inc	rax
	mov	QWORD PTR i$5[rsp], rax
$LN17@AuPmmngrIn:
	mov	rax, QWORD PTR MemMapEntries$[rsp]
	cmp	QWORD PTR i$5[rsp], rax
	jae	SHORT $LN15@AuPmmngrIn

; 153  : 		EFI_MEMORY_DESCRIPTOR *EfiMem = (EFI_MEMORY_DESCRIPTOR*)((uint64_t)info->map + i * info->descriptor_size);

	mov	rax, QWORD PTR info$[rsp]
	mov	rcx, QWORD PTR i$5[rsp]
	imul	rcx, QWORD PTR [rax+28]
	mov	rax, rcx
	mov	rcx, QWORD PTR info$[rsp]
	add	rax, QWORD PTR [rcx+20]
	mov	QWORD PTR EfiMem$3[rsp], rax

; 154  : 		_TotalRam += EfiMem->num_pages;

	mov	rax, QWORD PTR EfiMem$3[rsp]
	mov	rax, QWORD PTR [rax+24]
	mov	rcx, QWORD PTR ?_TotalRam@@3_KA		; _TotalRam
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR ?_TotalRam@@3_KA, rax		; _TotalRam

; 155  : 		if (EfiMem->type == 7)  {

	mov	rax, QWORD PTR EfiMem$3[rsp]
	cmp	DWORD PTR [rax], 7
	jne	SHORT $LN14@AuPmmngrIn

; 156  : 			if (((EfiMem->num_pages * 4096) > 0x100000) && BitmapArea == 0)  {

	mov	rax, QWORD PTR EfiMem$3[rsp]
	imul	rax, QWORD PTR [rax+24], 4096		; 00001000H
	cmp	rax, 1048576				; 00100000H
	jbe	SHORT $LN13@AuPmmngrIn
	cmp	QWORD PTR BitmapArea$[rsp], 0
	jne	SHORT $LN13@AuPmmngrIn

; 157  : 				BitmapArea = (void*)EfiMem->phys_start;

	mov	rax, QWORD PTR EfiMem$3[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR BitmapArea$[rsp], rax
$LN13@AuPmmngrIn:
$LN14@AuPmmngrIn:

; 158  : 			}
; 159  : 		}
; 160  : 	}

	jmp	$LN16@AuPmmngrIn
$LN15@AuPmmngrIn:

; 161  : 	
; 162  : 	_FreeMemory = _TotalRam;

	mov	rax, QWORD PTR ?_TotalRam@@3_KA		; _TotalRam
	mov	QWORD PTR ?_FreeMemory@@3_KA, rax	; _FreeMemory

; 163  : 	uint64_t BitmapSize = (_TotalRam * 4096) / 4096 / 8 + 1;

	imul	rax, QWORD PTR ?_TotalRam@@3_KA, 4096	; _TotalRam, 00001000H
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	rcx
	xor	edx, edx
	mov	ecx, 8
	div	rcx
	inc	rax
	mov	QWORD PTR BitmapSize$[rsp], rax

; 164  : 
; 165  : 	/* now initialise the bitmap */
; 166  : 	AuPmmngrInitBitmap(BitmapSize, BitmapArea);

	mov	rdx, QWORD PTR BitmapArea$[rsp]
	mov	rcx, QWORD PTR BitmapSize$[rsp]
	call	?AuPmmngrInitBitmap@@YAX_KPEAX@Z	; AuPmmngrInitBitmap

; 167  : 
; 168  : 	AuPmmngrLockPages((void*)BitmapArea, BitmapSize);

	mov	rdx, QWORD PTR BitmapSize$[rsp]
	mov	rcx, QWORD PTR BitmapArea$[rsp]
	call	?AuPmmngrLockPages@@YAXPEAX_K@Z		; AuPmmngrLockPages

; 169  : 
; 170  : 	for (size_t i = 0; i < MemMapEntries; i++) {

	mov	QWORD PTR i$2[rsp], 0
	jmp	SHORT $LN12@AuPmmngrIn
$LN11@AuPmmngrIn:
	mov	rax, QWORD PTR i$2[rsp]
	inc	rax
	mov	QWORD PTR i$2[rsp], rax
$LN12@AuPmmngrIn:
	mov	rax, QWORD PTR MemMapEntries$[rsp]
	cmp	QWORD PTR i$2[rsp], rax
	jae	$LN10@AuPmmngrIn

; 171  : 		EFI_MEMORY_DESCRIPTOR *EfiMem = (EFI_MEMORY_DESCRIPTOR*)((uint64_t)info->map + i * info->descriptor_size);

	mov	rax, QWORD PTR info$[rsp]
	mov	rcx, QWORD PTR i$2[rsp]
	imul	rcx, QWORD PTR [rax+28]
	mov	rax, rcx
	mov	rcx, QWORD PTR info$[rsp]
	add	rax, QWORD PTR [rcx+20]
	mov	QWORD PTR EfiMem$6[rsp], rax

; 172  : 		//_TotalRam += EfiMem->num_pages;
; 173  : 		if (EfiMem->type != 7) {

	mov	rax, QWORD PTR EfiMem$6[rsp]
	cmp	DWORD PTR [rax], 7
	je	SHORT $LN9@AuPmmngrIn

; 174  : 			uint64_t PhysStart = EfiMem->phys_start;

	mov	rax, QWORD PTR EfiMem$6[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR PhysStart$7[rsp], rax

; 175  : 			for (size_t j = 0; j < EfiMem->num_pages; j++){

	mov	QWORD PTR j$4[rsp], 0
	jmp	SHORT $LN8@AuPmmngrIn
$LN7@AuPmmngrIn:
	mov	rax, QWORD PTR j$4[rsp]
	inc	rax
	mov	QWORD PTR j$4[rsp], rax
$LN8@AuPmmngrIn:
	mov	rax, QWORD PTR EfiMem$6[rsp]
	mov	rax, QWORD PTR [rax+24]
	cmp	QWORD PTR j$4[rsp], rax
	jae	SHORT $LN6@AuPmmngrIn

; 176  : 				AuPmmngrLockPage(PhysStart + j * 4096);

	imul	rax, QWORD PTR j$4[rsp], 4096		; 00001000H
	mov	rcx, QWORD PTR PhysStart$7[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	rcx, rax
	call	?AuPmmngrLockPage@@YAX_K@Z		; AuPmmngrLockPage

; 177  : 			}

	jmp	SHORT $LN7@AuPmmngrIn
$LN6@AuPmmngrIn:
$LN9@AuPmmngrIn:

; 178  : 		}
; 179  : 	}

	jmp	$LN11@AuPmmngrIn
$LN10@AuPmmngrIn:

; 180  : 
; 181  : 	/* Lock addresses below 1MiB mark */
; 182  : 	for (size_t i = 0; i < (1 * 1024 * 1024)/ 4096; i++)

	mov	QWORD PTR i$1[rsp], 0
	jmp	SHORT $LN5@AuPmmngrIn
$LN4@AuPmmngrIn:
	mov	rax, QWORD PTR i$1[rsp]
	inc	rax
	mov	QWORD PTR i$1[rsp], rax
$LN5@AuPmmngrIn:
	cmp	QWORD PTR i$1[rsp], 256			; 00000100H
	jae	SHORT $LN3@AuPmmngrIn

; 183  : 		AuPmmngrLockPage(i * 4096);

	imul	rax, QWORD PTR i$1[rsp], 4096		; 00001000H
	mov	rcx, rax
	call	?AuPmmngrLockPage@@YAX_K@Z		; AuPmmngrLockPage
	jmp	SHORT $LN4@AuPmmngrIn
$LN3@AuPmmngrIn:

; 184  : 
; 185  : 	uint32_t AllocCount = info->reserved_mem_count;

	mov	rax, QWORD PTR info$[rsp]
	mov	eax, DWORD PTR [rax+12]
	mov	DWORD PTR AllocCount$[rsp], eax

; 186  : 	uint64_t* AllocStack = (uint64_t*)info->allocated_stack;

	mov	rax, QWORD PTR info$[rsp]
	mov	rax, QWORD PTR [rax+4]
	mov	QWORD PTR AllocStack$[rsp], rax
$LN2@AuPmmngrIn:

; 187  : 	while (AllocCount) {

	cmp	DWORD PTR AllocCount$[rsp], 0
	je	SHORT $LN1@AuPmmngrIn

; 188  : 		uint64_t Address = *AllocStack--;

	mov	rax, QWORD PTR AllocStack$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR Address$8[rsp], rax
	mov	rax, QWORD PTR AllocStack$[rsp]
	sub	rax, 8
	mov	QWORD PTR AllocStack$[rsp], rax

; 189  : 		AuPmmngrLockPage(Address);

	mov	rcx, QWORD PTR Address$8[rsp]
	call	?AuPmmngrLockPage@@YAX_K@Z		; AuPmmngrLockPage

; 190  : 		AllocCount--;

	mov	eax, DWORD PTR AllocCount$[rsp]
	dec	eax
	mov	DWORD PTR AllocCount$[rsp], eax

; 191  : 	}

	jmp	SHORT $LN2@AuPmmngrIn
$LN1@AuPmmngrIn:

; 192  : 
; 193  : 	/* Copy the SMP Code and mark that address
; 194  : 	* as unusable, [no doubt: this address is already
; 195  : 	* marked unusable above
; 196  : 	*/
; 197  : 	uint64_t* SMPAddress = (uint64_t*)0xA000;

	mov	QWORD PTR SMPAddress$[rsp], 40960	; 0000a000H

; 198  : 	AuPmmngrLockPage(0xA000);

	mov	ecx, 40960				; 0000a000H
	call	?AuPmmngrLockPage@@YAX_K@Z		; AuPmmngrLockPage

; 199  : 	memset(SMPAddress, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR SMPAddress$[rsp]
	call	memset

; 200  : 	memcpy(SMPAddress, info->apcode, 4096);

	mov	r8d, 4096				; 00001000H
	mov	rax, QWORD PTR info$[rsp]
	mov	rdx, QWORD PTR [rax+162]
	mov	rcx, QWORD PTR SMPAddress$[rsp]
	call	memcpy

; 201  : 
; 202  : }

	add	rsp, 152				; 00000098H
	ret	0
?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ENDP	; AuPmmngrInitialize
_TEXT	ENDS
END
