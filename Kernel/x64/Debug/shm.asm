; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?shm_list@@3PEAU_list_@@EA			; shm_list
PUBLIC	?shm_id@@3GA					; shm_id
PUBLIC	?shmlock@@3PEAU_spinlock_@@EA			; shmlock
_BSS	SEGMENT
?shm_list@@3PEAU_list_@@EA DQ 01H DUP (?)		; shm_list
?shm_id@@3GA DW	01H DUP (?)				; shm_id
	ALIGN	8

?shmlock@@3PEAU_spinlock_@@EA DQ 01H DUP (?)		; shmlock
_BSS	ENDS
CONST	SEGMENT
$SG3809	DB	'Closing index -> %d ', 0dH, 0aH, 00H
	ORG $+1
$SG3810	DB	'%s Unmapping shm ->%d count ', 0dH, 0aH, 00H
	ORG $+1
$SG3826	DB	'Unmapping shm -> %x ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?AuInitialiseSHMMan@@YAXXZ			; AuInitialiseSHMMan
PUBLIC	?AuGetSHMByID@@YAPEAU_shm_@@G@Z			; AuGetSHMByID
PUBLIC	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z		; AuCreateSHM
PUBLIC	?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z	; AuSHMObtainMem
PUBLIC	?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z		; AuSHMUnmap
PUBLIC	?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z		; AuSHMUnmapAll
PUBLIC	?AuSHMGetID@@YAGXZ				; AuSHMGetID
PUBLIC	?AuGetSHMSeg@@YAPEAU_shm_@@G@Z			; AuGetSHMSeg
PUBLIC	?AuSHMDelete@@YAXPEAU_shm_@@@Z			; AuSHMDelete
PUBLIC	?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z	; AuSHMProcBreak
PUBLIC	?AuSHMProcSwap@@YAXPEAU_data_@@0@Z		; AuSHMProcSwap
PUBLIC	?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z	; AuSHMProcOrderList
EXTRN	initialize_list:PROC
EXTRN	list_add:PROC
EXTRN	list_remove:PROC
EXTRN	list_get_at:PROC
EXTRN	AuCreateSpinlock:PROC
EXTRN	AuAcquireSpinlock:PROC
EXTRN	AuReleaseSpinlock:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPage:PROC
EXTRN	flush_tlb:PROC
EXTRN	memset:PROC
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?AuInitialiseSHMMan@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+47
	DD	imagerel $unwind$?AuInitialiseSHMMan@@YAXXZ
$pdata$?AuGetSHMByID@@YAPEAU_shm_@@G@Z DD imagerel $LN7
	DD	imagerel $LN7+99
	DD	imagerel $unwind$?AuGetSHMByID@@YAPEAU_shm_@@G@Z
$pdata$?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z DD imagerel $LN10
	DD	imagerel $LN10+372
	DD	imagerel $unwind$?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z
$pdata$?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z DD imagerel $LN23
	DD	imagerel $LN23+1091
	DD	imagerel $unwind$?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z
$pdata$?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z DD imagerel $LN12
	DD	imagerel $LN12+483
	DD	imagerel $unwind$?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z
$pdata$?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z DD imagerel $LN9
	DD	imagerel $LN9+349
	DD	imagerel $unwind$?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z
$pdata$?AuSHMGetID@@YAGXZ DD imagerel $LN3
	DD	imagerel $LN3+40
	DD	imagerel $unwind$?AuSHMGetID@@YAGXZ
$pdata$?AuGetSHMSeg@@YAPEAU_shm_@@G@Z DD imagerel $LN7
	DD	imagerel $LN7+98
	DD	imagerel $unwind$?AuGetSHMSeg@@YAPEAU_shm_@@G@Z
$pdata$?AuSHMDelete@@YAXPEAU_shm_@@@Z DD imagerel $LN13
	DD	imagerel $LN13+257
	DD	imagerel $unwind$?AuSHMDelete@@YAXPEAU_shm_@@@Z
$pdata$?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z DD imagerel $LN3
	DD	imagerel $LN3+72
	DD	imagerel $unwind$?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z
$pdata$?AuSHMProcSwap@@YAXPEAU_data_@@0@Z DD imagerel $LN3
	DD	imagerel $LN3+63
	DD	imagerel $unwind$?AuSHMProcSwap@@YAXPEAU_data_@@0@Z
$pdata$?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z DD imagerel $LN12
	DD	imagerel $LN12+260
	DD	imagerel $unwind$?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuInitialiseSHMMan@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuGetSHMByID@@YAPEAU_shm_@@G@Z DD 010901H
	DD	06209H
$unwind$?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z DD 011801H
	DD	06218H
$unwind$?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z DD 021b01H
	DD	013011bH
$unwind$?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z DD 010e01H
	DD	0c20eH
$unwind$?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	08209H
$unwind$?AuSHMGetID@@YAGXZ DD 010401H
	DD	02204H
$unwind$?AuGetSHMSeg@@YAPEAU_shm_@@G@Z DD 010901H
	DD	06209H
$unwind$?AuSHMDelete@@YAXPEAU_shm_@@@Z DD 010901H
	DD	08209H
$unwind$?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z DD 010e01H
	DD	0220eH
$unwind$?AuSHMProcSwap@@YAXPEAU_data_@@0@Z DD 010e01H
	DD	0220eH
$unwind$?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	0a209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
i$1 = 32
k$2 = 36
index$ = 40
current$ = 48
mappsone$3 = 56
maptwo$4 = 64
proc$ = 96
?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z PROC		; AuSHMProcOrderList

; 183  : void AuSHMProcOrderList(AuProcess* proc) {

$LN12:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 184  : 	dataentry* current = proc->shmmaps->entry_current;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1080]
	mov	rax, QWORD PTR [rax+4]
	mov	QWORD PTR current$[rsp], rax

; 185  : 	dataentry* index = NULL;

	mov	QWORD PTR index$[rsp], 0

; 186  : 	for (int i = 0; i < proc->shmmaps->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN9@AuSHMProcO
$LN8@AuSHMProcO:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN9@AuSHMProcO:
	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1080]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	$LN7@AuSHMProcO

; 187  : 		if (current == NULL)

	cmp	QWORD PTR current$[rsp], 0
	jne	SHORT $LN6@AuSHMProcO

; 188  : 			break;

	jmp	$LN7@AuSHMProcO
$LN6@AuSHMProcO:

; 189  : 		AuSHMMappings* mappsone = (AuSHMMappings*)current->data;

	mov	rax, QWORD PTR current$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR mappsone$3[rsp], rax

; 190  : 		index = current->next;

	mov	rax, QWORD PTR current$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR index$[rsp], rax

; 191  : 		for (int k = 0; k < proc->shmmaps->pointer - 1; k++) {

	mov	DWORD PTR k$2[rsp], 0
	jmp	SHORT $LN5@AuSHMProcO
$LN4@AuSHMProcO:
	mov	eax, DWORD PTR k$2[rsp]
	inc	eax
	mov	DWORD PTR k$2[rsp], eax
$LN5@AuSHMProcO:
	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1080]
	mov	eax, DWORD PTR [rax]
	dec	eax
	cmp	DWORD PTR k$2[rsp], eax
	jae	SHORT $LN3@AuSHMProcO

; 192  : 			if (index == NULL)

	cmp	QWORD PTR index$[rsp], 0
	jne	SHORT $LN2@AuSHMProcO

; 193  : 				break;

	jmp	SHORT $LN3@AuSHMProcO
$LN2@AuSHMProcO:

; 194  : 			AuSHMMappings* maptwo = (AuSHMMappings*)index->data;

	mov	rax, QWORD PTR index$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR maptwo$4[rsp], rax

; 195  : 			if (mappsone->start_addr > maptwo->start_addr) 

	mov	rax, QWORD PTR mappsone$3[rsp]
	mov	rcx, QWORD PTR maptwo$4[rsp]
	mov	rcx, QWORD PTR [rcx]
	cmp	QWORD PTR [rax], rcx
	jbe	SHORT $LN1@AuSHMProcO

; 196  : 				AuSHMProcSwap(current, index);

	mov	rdx, QWORD PTR index$[rsp]
	mov	rcx, QWORD PTR current$[rsp]
	call	?AuSHMProcSwap@@YAXPEAU_data_@@0@Z	; AuSHMProcSwap
$LN1@AuSHMProcO:

; 197  : 			index = index->next;

	mov	rax, QWORD PTR index$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR index$[rsp], rax

; 198  : 		}

	jmp	SHORT $LN4@AuSHMProcO
$LN3@AuSHMProcO:

; 199  : 		current = current->next;

	mov	rax, QWORD PTR current$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR current$[rsp], rax

; 200  : 	}

	jmp	$LN8@AuSHMProcO
$LN7@AuSHMProcO:

; 201  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z ENDP		; AuSHMProcOrderList
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
tmp$ = 0
current$ = 32
index$ = 40
?AuSHMProcSwap@@YAXPEAU_data_@@0@Z PROC			; AuSHMProcSwap

; 173  : void AuSHMProcSwap(dataentry* current, dataentry* index) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 174  : 	void* tmp = current->data;

	mov	rax, QWORD PTR current$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR tmp$[rsp], rax

; 175  : 	current->data = index->data;

	mov	rax, QWORD PTR current$[rsp]
	mov	rcx, QWORD PTR index$[rsp]
	mov	rcx, QWORD PTR [rcx+16]
	mov	QWORD PTR [rax+16], rcx

; 176  : 	index->data = tmp;

	mov	rax, QWORD PTR index$[rsp]
	mov	rcx, QWORD PTR tmp$[rsp]
	mov	QWORD PTR [rax+16], rcx

; 177  : }

	add	rsp, 24
	ret	0
?AuSHMProcSwap@@YAXPEAU_data_@@0@Z ENDP			; AuSHMProcSwap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
start_addr$ = 0
proc$ = 32
num_frames$ = 40
?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z PROC		; AuSHMProcBreak

; 164  : size_t AuSHMProcBreak(AuProcess* proc, size_t num_frames) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 165  : 	size_t start_addr = proc->shm_break;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1096]
	mov	QWORD PTR start_addr$[rsp], rax

; 166  : 	proc->shm_break = (proc->shm_break + num_frames * PAGE_SIZE);

	imul	rax, QWORD PTR num_frames$[rsp], 4096	; 00001000H
	mov	rcx, QWORD PTR proc$[rsp]
	add	rax, QWORD PTR [rcx+1096]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1096], rax

; 167  : 	return start_addr;

	mov	rax, QWORD PTR start_addr$[rsp]

; 168  : }

	add	rsp, 24
	ret	0
?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z ENDP		; AuSHMProcBreak
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
j$1 = 32
i$2 = 36
phys$3 = 40
shm_$4 = 48
shm$ = 80
?AuSHMDelete@@YAXPEAU_shm_@@@Z PROC			; AuSHMDelete

; 136  : void AuSHMDelete(AuSHM* shm) {

$LN13:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 137  : 	if (!shm)

	cmp	QWORD PTR shm$[rsp], 0
	jne	SHORT $LN10@AuSHMDelet

; 138  : 		return;

	jmp	$LN11@AuSHMDelet
$LN10@AuSHMDelet:

; 139  : 	if (shm->link_count > 0){

	mov	rax, QWORD PTR shm$[rsp]
	movzx	eax, WORD PTR [rax+16]
	test	eax, eax
	jle	SHORT $LN9@AuSHMDelet

; 140  : 		shm->link_count--;

	mov	rax, QWORD PTR shm$[rsp]
	movzx	eax, WORD PTR [rax+16]
	dec	ax
	mov	rcx, QWORD PTR shm$[rsp]
	mov	WORD PTR [rcx+16], ax
$LN9@AuSHMDelet:

; 141  : 	}
; 142  : 
; 143  : 	if (shm->link_count == 0){

	mov	rax, QWORD PTR shm$[rsp]
	movzx	eax, WORD PTR [rax+16]
	test	eax, eax
	jne	$LN8@AuSHMDelet

; 144  : 		for (int i = 0; i < shm->num_frames; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN7@AuSHMDelet
$LN6@AuSHMDelet:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN7@AuSHMDelet:
	mov	rax, QWORD PTR shm$[rsp]
	mov	eax, DWORD PTR [rax+4]
	cmp	DWORD PTR i$2[rsp], eax
	jae	SHORT $LN5@AuSHMDelet

; 145  : 			size_t phys = shm->frames[i];

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR shm$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR phys$3[rsp], rax

; 146  : 			AuPmmngrFree((void*)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuPmmngrFree

; 147  : 		}

	jmp	SHORT $LN6@AuSHMDelet
$LN5@AuSHMDelet:

; 148  : 		
; 149  : 		for (int j = 0; j <= shm_list->pointer; j++) {

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN4@AuSHMDelet
$LN3@AuSHMDelet:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN4@AuSHMDelet:
	mov	rax, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR j$1[rsp], eax
	ja	SHORT $LN2@AuSHMDelet

; 150  : 			AuSHM *shm_ = (AuSHM*)list_get_at(shm_list, j);

	mov	edx, DWORD PTR j$1[rsp]
	mov	rcx, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	call	list_get_at
	mov	QWORD PTR shm_$4[rsp], rax

; 151  : 			if (shm_ == shm)

	mov	rax, QWORD PTR shm$[rsp]
	cmp	QWORD PTR shm_$4[rsp], rax
	jne	SHORT $LN1@AuSHMDelet

; 152  : 				list_remove(shm_list, j);

	mov	edx, DWORD PTR j$1[rsp]
	mov	rcx, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	call	list_remove
$LN1@AuSHMDelet:

; 153  : 		}

	jmp	SHORT $LN3@AuSHMDelet
$LN2@AuSHMDelet:

; 154  : 		kfree(shm->frames);

	mov	rax, QWORD PTR shm$[rsp]
	mov	rcx, QWORD PTR [rax+8]
	call	kfree

; 155  : 		kfree(shm);

	mov	rcx, QWORD PTR shm$[rsp]
	call	kfree
$LN8@AuSHMDelet:
$LN11@AuSHMDelet:

; 156  : 	}
; 157  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuSHMDelete@@YAXPEAU_shm_@@@Z ENDP			; AuSHMDelete
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
i$1 = 32
shm$2 = 40
key$ = 64
?AuGetSHMSeg@@YAPEAU_shm_@@G@Z PROC			; AuGetSHMSeg

; 70   : AuSHM * AuGetSHMSeg(uint16_t key) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 71   : 	for (int i = 0; i < shm_list->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuGetSHMSe
$LN3@AuGetSHMSe:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuGetSHMSe:
	mov	rax, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN2@AuGetSHMSe

; 72   : 		AuSHM* shm = (AuSHM*)list_get_at(shm_list, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	call	list_get_at
	mov	QWORD PTR shm$2[rsp], rax

; 73   : 		if (shm->key == key)

	mov	rax, QWORD PTR shm$2[rsp]
	movzx	eax, WORD PTR [rax]
	movzx	ecx, WORD PTR key$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN1@AuGetSHMSe

; 74   : 			return shm;

	mov	rax, QWORD PTR shm$2[rsp]
	jmp	SHORT $LN5@AuGetSHMSe
$LN1@AuGetSHMSe:

; 75   : 	}

	jmp	SHORT $LN3@AuGetSHMSe
$LN2@AuGetSHMSe:

; 76   : 
; 77   : 	return NULL;

	xor	eax, eax
$LN5@AuGetSHMSe:

; 78   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuGetSHMSeg@@YAPEAU_shm_@@G@Z ENDP			; AuGetSHMSeg
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
_id$ = 0
?AuSHMGetID@@YAGXZ PROC					; AuSHMGetID

; 59   : uint16_t AuSHMGetID() {

$LN3:
	sub	rsp, 24

; 60   : 	uint16_t _id = shm_id;

	movzx	eax, WORD PTR ?shm_id@@3GA		; shm_id
	mov	WORD PTR _id$[rsp], ax

; 61   : 	shm_id = shm_id + 1;

	movzx	eax, WORD PTR ?shm_id@@3GA		; shm_id
	inc	eax
	mov	WORD PTR ?shm_id@@3GA, ax		; shm_id

; 62   : 	return  _id;

	movzx	eax, WORD PTR _id$[rsp]

; 63   : }

	add	rsp, 24
	ret	0
?AuSHMGetID@@YAGXZ ENDP					; AuSHMGetID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
j$1 = 32
i$2 = 36
mapping$3 = 40
vpage$4 = 48
tv74 = 56
proc$ = 80
?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z PROC		; AuSHMUnmapAll

; 369  : void AuSHMUnmapAll(AuProcess* proc) {

$LN9:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 370  : 	AuAcquireSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuAcquireSpinlock

; 371  : 	for (int i = 0; i < proc->shmmaps->pointer; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN6@AuSHMUnmap
$LN5@AuSHMUnmap:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN6@AuSHMUnmap:
	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1080]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$2[rsp], eax
	jae	$LN4@AuSHMUnmap

; 372  : 		AuSHMMappings* mapping = (AuSHMMappings*)list_remove(proc->shmmaps, i);

	mov	edx, DWORD PTR i$2[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_remove
	mov	QWORD PTR mapping$3[rsp], rax

; 373  : 		for (int j = 0; j < mapping->length / PAGE_SIZE; j++) {

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN3@AuSHMUnmap
$LN2@AuSHMUnmap:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN3@AuSHMUnmap:
	movsxd	rax, DWORD PTR j$1[rsp]
	mov	QWORD PTR tv74[rsp], rax
	xor	edx, edx
	mov	rcx, QWORD PTR mapping$3[rsp]
	mov	rax, QWORD PTR [rcx+8]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv74[rsp]
	cmp	rcx, rax
	jae	SHORT $LN1@AuSHMUnmap

; 374  : 			AuVPage* vpage = AuVmmngrGetPage(mapping->start_addr + j * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR mapping$3[rsp]
	add	rax, QWORD PTR [rcx]
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR vpage$4[rsp], rax

; 375  : 			vpage->bits.page = 0;

	mov	rax, QWORD PTR vpage$4[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR vpage$4[rsp]
	mov	QWORD PTR [rcx], rax

; 376  : 			vpage->bits.present = 0;

	mov	rax, QWORD PTR vpage$4[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR vpage$4[rsp]
	mov	QWORD PTR [rcx], rax

; 377  : 			flush_tlb((void*)(mapping->start_addr + j * PAGE_SIZE));

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR mapping$3[rsp]
	add	rax, QWORD PTR [rcx]
	mov	rcx, rax
	call	flush_tlb

; 378  : 		}

	jmp	$LN2@AuSHMUnmap
$LN1@AuSHMUnmap:

; 379  : 		AuSHMDelete(mapping->shm);

	mov	rax, QWORD PTR mapping$3[rsp]
	mov	rcx, QWORD PTR [rax+16]
	call	?AuSHMDelete@@YAXPEAU_shm_@@@Z		; AuSHMDelete

; 380  : 		SeTextOut("Unmapping shm -> %x \r\n", mapping->start_addr);

	mov	rax, QWORD PTR mapping$3[rsp]
	mov	rdx, QWORD PTR [rax]
	lea	rcx, OFFSET FLAT:$SG3826
	call	SeTextOut

; 381  : 		kfree(mapping);

	mov	rcx, QWORD PTR mapping$3[rsp]
	call	kfree

; 382  : 	}

	jmp	$LN5@AuSHMUnmap
$LN4@AuSHMUnmap:

; 383  : 	kfree(proc->shmmaps);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	kfree

; 384  : 	AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 385  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z ENDP		; AuSHMUnmapAll
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
index$ = 40
vpage$3 = 48
mapping$ = 56
shm$ = 64
maps$4 = 72
tv80 = 80
key$ = 112
proc$ = 120
?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z PROC			; AuSHMUnmap

; 327  : void AuSHMUnmap(uint16_t key, AuProcess* proc) {

$LN12:
	mov	QWORD PTR [rsp+16], rdx
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 104				; 00000068H

; 328  : 	AuAcquireSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuAcquireSpinlock

; 329  : 	AuSHM* shm = AuGetSHMSeg(key);

	movzx	ecx, WORD PTR key$[rsp]
	call	?AuGetSHMSeg@@YAPEAU_shm_@@G@Z		; AuGetSHMSeg
	mov	QWORD PTR shm$[rsp], rax

; 330  : 
; 331  : 	if (!shm) {

	cmp	QWORD PTR shm$[rsp], 0
	jne	SHORT $LN9@AuSHMUnmap

; 332  : 		AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 333  : 		return;

	jmp	$LN10@AuSHMUnmap
$LN9@AuSHMUnmap:

; 334  : 	}
; 335  : 	
; 336  : 	AuSHMMappings* mapping = NULL;

	mov	QWORD PTR mapping$[rsp], 0

; 337  : 	int index = 0;

	mov	DWORD PTR index$[rsp], 0

; 338  : 	for (int i = 0; i < proc->shmmaps->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN8@AuSHMUnmap
$LN7@AuSHMUnmap:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN8@AuSHMUnmap:
	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1080]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	$LN6@AuSHMUnmap

; 339  : 		AuSHMMappings* maps = (AuSHMMappings*)list_get_at(proc->shmmaps, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_get_at
	mov	QWORD PTR maps$4[rsp], rax

; 340  : 		if (maps->shm == shm){

	mov	rax, QWORD PTR maps$4[rsp]
	mov	rcx, QWORD PTR shm$[rsp]
	cmp	QWORD PTR [rax+16], rcx
	jne	$LN5@AuSHMUnmap

; 341  : 			mapping = maps;

	mov	rax, QWORD PTR maps$4[rsp]
	mov	QWORD PTR mapping$[rsp], rax

; 342  : 			for (int i = 0; i < mapping->length / PAGE_SIZE; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN4@AuSHMUnmap
$LN3@AuSHMUnmap:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN4@AuSHMUnmap:
	movsxd	rax, DWORD PTR i$2[rsp]
	mov	QWORD PTR tv80[rsp], rax
	xor	edx, edx
	mov	rcx, QWORD PTR mapping$[rsp]
	mov	rax, QWORD PTR [rcx+8]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv80[rsp]
	cmp	rcx, rax
	jae	SHORT $LN2@AuSHMUnmap

; 343  : 				AuVPage* vpage = AuVmmngrGetPage(mapping->start_addr + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$2[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR mapping$[rsp]
	add	rax, QWORD PTR [rcx]
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR vpage$3[rsp], rax

; 344  : 				if (vpage) {

	cmp	QWORD PTR vpage$3[rsp], 0
	je	SHORT $LN1@AuSHMUnmap

; 345  : 					vpage->bits.page = 0;

	mov	rax, QWORD PTR vpage$3[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR vpage$3[rsp]
	mov	QWORD PTR [rcx], rax

; 346  : 					vpage->bits.present = 0;

	mov	rax, QWORD PTR vpage$3[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR vpage$3[rsp]
	mov	QWORD PTR [rcx], rax

; 347  : 					flush_tlb((void*)(mapping->start_addr + i * PAGE_SIZE));

	imul	eax, DWORD PTR i$2[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR mapping$[rsp]
	add	rax, QWORD PTR [rcx]
	mov	rcx, rax
	call	flush_tlb
$LN1@AuSHMUnmap:

; 348  : 				}
; 349  : 			}

	jmp	$LN3@AuSHMUnmap
$LN2@AuSHMUnmap:

; 350  : 			SeTextOut("Closing index -> %d \r\n", i);

	mov	edx, DWORD PTR i$1[rsp]
	lea	rcx, OFFSET FLAT:$SG3809
	call	SeTextOut

; 351  : 			list_remove(proc->shmmaps, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_remove

; 352  : 			kfree(mapping);

	mov	rcx, QWORD PTR mapping$[rsp]
	call	kfree

; 353  : 			break;

	jmp	SHORT $LN6@AuSHMUnmap
$LN5@AuSHMUnmap:

; 354  : 		}
; 355  : 	}

	jmp	$LN7@AuSHMUnmap
$LN6@AuSHMUnmap:

; 356  : 
; 357  : 
; 358  : 	AuSHMDelete(shm);

	mov	rcx, QWORD PTR shm$[rsp]
	call	?AuSHMDelete@@YAXPEAU_shm_@@@Z		; AuSHMDelete

; 359  : 	SeTextOut("%s Unmapping shm ->%d count \r\n",proc->name, shm->link_count);

	mov	rax, QWORD PTR shm$[rsp]
	movzx	eax, WORD PTR [rax+16]
	mov	rcx, QWORD PTR proc$[rsp]
	add	rcx, 4
	mov	r8d, eax
	mov	rdx, rcx
	lea	rcx, OFFSET FLAT:$SG3810
	call	SeTextOut

; 360  : 	AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock
$LN10@AuSHMUnmap:

; 361  : }

	add	rsp, 104				; 00000068H
	ret	0
?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z ENDP			; AuSHMUnmap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
have_mappings$ = 32
mem$ = 40
mappings$ = 48
j$1 = 56
j$2 = 60
i$3 = 64
i$4 = 68
last_addr$ = 72
maps$5 = 80
start_addr$6 = 88
current_virt$7 = 96
gap$8 = 104
gap$9 = 112
phys$10 = 120
phys$11 = 128
phys_addr$12 = 136
proc$ = 160
id$ = 168
shmaddr$ = 176
shmflg$ = 184
?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z PROC	; AuSHMObtainMem

; 211  : void* AuSHMObtainMem(AuProcess* proc, uint16_t id, void* shmaddr, int shmflg) {

$LN23:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	WORD PTR [rsp+16], dx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 152				; 00000098H

; 212  : 	AuAcquireSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuAcquireSpinlock

; 213  : 	AuSHM* mem = NULL;

	mov	QWORD PTR mem$[rsp], 0

; 214  : 
; 215  : 	/* search for shm memory segment */
; 216  : 	mem = AuGetSHMByID(id);

	movzx	ecx, WORD PTR id$[rsp]
	call	?AuGetSHMByID@@YAPEAU_shm_@@G@Z		; AuGetSHMByID
	mov	QWORD PTR mem$[rsp], rax

; 217  : 
; 218  : 	if (!mem)

	cmp	QWORD PTR mem$[rsp], 0
	jne	SHORT $LN20@AuSHMObtai

; 219  : 		return NULL;

	xor	eax, eax
	jmp	$LN21@AuSHMObtai
$LN20@AuSHMObtai:

; 220  : 
; 221  : 
; 222  : 	AuSHMMappings *mappings = (AuSHMMappings*)kmalloc(sizeof(AuSHMMappings));

	mov	ecx, 24
	call	kmalloc
	mov	QWORD PTR mappings$[rsp], rax

; 223  : 	memset(mappings, 0, sizeof(AuSHMMappings));

	mov	r8d, 24
	xor	edx, edx
	mov	rcx, QWORD PTR mappings$[rsp]
	call	memset

; 224  : 
; 225  : 	mem->link_count++;

	mov	rax, QWORD PTR mem$[rsp]
	movzx	eax, WORD PTR [rax+16]
	inc	ax
	mov	rcx, QWORD PTR mem$[rsp]
	mov	WORD PTR [rcx+16], ax

; 226  : 
; 227  : 	/* look for already available address space gap
; 228  : 	 * before increasing the process shm_break
; 229  : 	 */
; 230  : 	uint64_t last_addr = USER_SHARED_MEM_START;

	mov	eax, -2147483648			; 80000000H
	mov	QWORD PTR last_addr$[rsp], rax

; 231  : 	bool have_mappings = false;

	mov	BYTE PTR have_mappings$[rsp], 0

; 232  : 	for (int i = 0; i < proc->shmmaps->pointer; i++) {

	mov	DWORD PTR i$3[rsp], 0
	jmp	SHORT $LN19@AuSHMObtai
$LN18@AuSHMObtai:
	mov	eax, DWORD PTR i$3[rsp]
	inc	eax
	mov	DWORD PTR i$3[rsp], eax
$LN19@AuSHMObtai:
	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1080]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$3[rsp], eax
	jae	$LN17@AuSHMObtai

; 233  : 		AuSHMMappings *maps = (AuSHMMappings*)list_get_at(proc->shmmaps, i);

	mov	edx, DWORD PTR i$3[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_get_at
	mov	QWORD PTR maps$5[rsp], rax

; 234  : 		if (!have_mappings)

	movzx	eax, BYTE PTR have_mappings$[rsp]
	test	eax, eax
	jne	SHORT $LN16@AuSHMObtai

; 235  : 			have_mappings = true;

	mov	BYTE PTR have_mappings$[rsp], 1
$LN16@AuSHMObtai:

; 236  : 		if (maps->start_addr > last_addr) {

	mov	rax, QWORD PTR maps$5[rsp]
	mov	rcx, QWORD PTR last_addr$[rsp]
	cmp	QWORD PTR [rax], rcx
	jbe	$LN15@AuSHMObtai

; 237  : 			size_t gap = maps->start_addr - last_addr;

	mov	rax, QWORD PTR maps$5[rsp]
	mov	rcx, QWORD PTR last_addr$[rsp]
	mov	rax, QWORD PTR [rax]
	sub	rax, rcx
	mov	QWORD PTR gap$8[rsp], rax

; 238  : 			if (gap >= mem->num_frames * PAGE_SIZE){

	mov	rax, QWORD PTR mem$[rsp]
	imul	eax, DWORD PTR [rax+4], 4096		; 00001000H
	mov	eax, eax
	cmp	QWORD PTR gap$8[rsp], rax
	jb	$LN14@AuSHMObtai

; 239  : 				for (int j = 0; j < mem->num_frames; j++) {

	mov	DWORD PTR j$2[rsp], 0
	jmp	SHORT $LN13@AuSHMObtai
$LN12@AuSHMObtai:
	mov	eax, DWORD PTR j$2[rsp]
	inc	eax
	mov	DWORD PTR j$2[rsp], eax
$LN13@AuSHMObtai:
	mov	rax, QWORD PTR mem$[rsp]
	mov	eax, DWORD PTR [rax+4]
	cmp	DWORD PTR j$2[rsp], eax
	jae	SHORT $LN11@AuSHMObtai

; 240  : 					size_t phys = mem->frames[j];

	movsxd	rax, DWORD PTR j$2[rsp]
	mov	rcx, QWORD PTR mem$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR phys$11[rsp], rax

; 241  : 					AuMapPage(phys, last_addr + j * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR j$2[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR last_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$11[rsp]
	call	AuMapPage

; 242  : 				}

	jmp	SHORT $LN12@AuSHMObtai
$LN11@AuSHMObtai:

; 243  : 				mappings->start_addr = last_addr;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rcx, QWORD PTR last_addr$[rsp]
	mov	QWORD PTR [rax], rcx

; 244  : 				mappings->length = mem->num_frames * PAGE_SIZE;

	mov	rax, QWORD PTR mem$[rsp]
	imul	eax, DWORD PTR [rax+4], 4096		; 00001000H
	mov	eax, eax
	mov	rcx, QWORD PTR mappings$[rsp]
	mov	QWORD PTR [rcx+8], rax

; 245  : 				mappings->shm = mem;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rcx, QWORD PTR mem$[rsp]
	mov	QWORD PTR [rax+16], rcx

; 246  : 
; 247  : 				/* Here we need some sorting algorithm to sort
; 248  : 				 * out mappings in ascending order, like Bubble-sort
; 249  : 				 * algorithm between nodes of mappings
; 250  : 				 */
; 251  : 				list_add(proc->shmmaps, mappings);

	mov	rdx, QWORD PTR mappings$[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_add

; 252  : 				AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 253  : 
; 254  : #if 0
; 255  : 				/* just for debugging purpose */
; 256  : 				for (int i = 0; i < proc->shmmaps->pointer; i++) {
; 257  : 					AuSHMMappings* map = (AuSHMMappings*)list_get_at(proc->shmmaps, i);
; 258  : 					SeTextOut("M -> %x \r\n", map->start_addr);
; 259  : 				}
; 260  : #endif
; 261  : 
; 262  : 				/* Now order the list, in ascending order */
; 263  : 				AuSHMProcOrderList(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z ; AuSHMProcOrderList

; 264  : 
; 265  : #if 0
; 266  : 				/* just for debugging purpose after sorting 
; 267  : 				 * has been done 
; 268  : 				 */
; 269  : 				SeTextOut("After ordering \r\n");
; 270  : 
; 271  : 				for (int i = 0; i < proc->shmmaps->pointer; i++) {
; 272  : 					AuSHMMappings* map = (AuSHMMappings*)list_get_at(proc->shmmaps, i);
; 273  : 					SeTextOut("M -> %x \r\n", map->start_addr);
; 274  : 				}
; 275  : #endif
; 276  : 
; 277  : 				return (void*)mappings->start_addr;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rax, QWORD PTR [rax]
	jmp	$LN21@AuSHMObtai
$LN14@AuSHMObtai:
$LN15@AuSHMObtai:

; 278  : 			}
; 279  : 		}
; 280  : 		last_addr = maps->start_addr + maps->length;

	mov	rax, QWORD PTR maps$5[rsp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR maps$5[rsp]
	add	rax, QWORD PTR [rcx+8]
	mov	QWORD PTR last_addr$[rsp], rax

; 281  : 	}

	jmp	$LN18@AuSHMObtai
$LN17@AuSHMObtai:

; 282  : 
; 283  : 	if (!have_mappings) {

	movzx	eax, BYTE PTR have_mappings$[rsp]
	test	eax, eax
	jne	$LN10@AuSHMObtai

; 284  : 		size_t start_addr = USER_SHARED_MEM_START;

	mov	eax, -2147483648			; 80000000H
	mov	QWORD PTR start_addr$6[rsp], rax

; 285  : 		if (proc->shm_break > start_addr) {

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR start_addr$6[rsp]
	cmp	QWORD PTR [rax+1096], rcx
	jbe	$LN9@AuSHMObtai

; 286  : 			size_t gap = proc->shm_break - start_addr;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR start_addr$6[rsp]
	mov	rax, QWORD PTR [rax+1096]
	sub	rax, rcx
	mov	QWORD PTR gap$9[rsp], rax

; 287  : 			if (gap >= mem->num_frames * PAGE_SIZE) {

	mov	rax, QWORD PTR mem$[rsp]
	imul	eax, DWORD PTR [rax+4], 4096		; 00001000H
	mov	eax, eax
	cmp	QWORD PTR gap$9[rsp], rax
	jb	$LN8@AuSHMObtai

; 288  : 				for (int j = 0; j < mem->num_frames; j++) {

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN7@AuSHMObtai
$LN6@AuSHMObtai:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN7@AuSHMObtai:
	mov	rax, QWORD PTR mem$[rsp]
	mov	eax, DWORD PTR [rax+4]
	cmp	DWORD PTR j$1[rsp], eax
	jae	SHORT $LN5@AuSHMObtai

; 289  : 					size_t phys = mem->frames[j];

	movsxd	rax, DWORD PTR j$1[rsp]
	mov	rcx, QWORD PTR mem$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR phys$10[rsp], rax

; 290  : 					AuMapPage(phys, last_addr + j * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR last_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$10[rsp]
	call	AuMapPage

; 291  : 				}

	jmp	SHORT $LN6@AuSHMObtai
$LN5@AuSHMObtai:

; 292  : 				mappings->start_addr = last_addr;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rcx, QWORD PTR last_addr$[rsp]
	mov	QWORD PTR [rax], rcx

; 293  : 				mappings->length = mem->num_frames * PAGE_SIZE;

	mov	rax, QWORD PTR mem$[rsp]
	imul	eax, DWORD PTR [rax+4], 4096		; 00001000H
	mov	eax, eax
	mov	rcx, QWORD PTR mappings$[rsp]
	mov	QWORD PTR [rcx+8], rax

; 294  : 				mappings->shm = mem;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rcx, QWORD PTR mem$[rsp]
	mov	QWORD PTR [rax+16], rcx

; 295  : 				list_add(proc->shmmaps, mappings);

	mov	rdx, QWORD PTR mappings$[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_add

; 296  : 				/* Now order the list, in ascending order */
; 297  : 				AuSHMProcOrderList(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z ; AuSHMProcOrderList

; 298  : 				AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 299  : 				return (void*)mappings->start_addr;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rax, QWORD PTR [rax]
	jmp	$LN21@AuSHMObtai
$LN8@AuSHMObtai:
$LN9@AuSHMObtai:
$LN10@AuSHMObtai:

; 300  : 			}
; 301  : 		}
; 302  : 	}
; 303  : 
; 304  : 	/* finally, we need to increase the shm break */
; 305  : 	for (int i = 0; i < mem->num_frames; i++) {

	mov	DWORD PTR i$4[rsp], 0
	jmp	SHORT $LN4@AuSHMObtai
$LN3@AuSHMObtai:
	mov	eax, DWORD PTR i$4[rsp]
	inc	eax
	mov	DWORD PTR i$4[rsp], eax
$LN4@AuSHMObtai:
	mov	rax, QWORD PTR mem$[rsp]
	mov	eax, DWORD PTR [rax+4]
	cmp	DWORD PTR i$4[rsp], eax
	jae	SHORT $LN2@AuSHMObtai

; 306  : 		uint64_t phys_addr = mem->frames[i];

	movsxd	rax, DWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR mem$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR phys_addr$12[rsp], rax

; 307  : 		uint64_t current_virt = AuSHMProcBreak(proc, 1);

	mov	edx, 1
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMProcBreak@@YA_KPEAU_au_proc_@@_K@Z ; AuSHMProcBreak
	mov	QWORD PTR current_virt$7[rsp], rax

; 308  : 		AuMapPage((uint64_t)phys_addr, current_virt, X86_64_PAGING_USER);

	mov	r8b, 4
	mov	rdx, QWORD PTR current_virt$7[rsp]
	mov	rcx, QWORD PTR phys_addr$12[rsp]
	call	AuMapPage

; 309  : 		if (mappings->start_addr == 0)

	mov	rax, QWORD PTR mappings$[rsp]
	cmp	QWORD PTR [rax], 0
	jne	SHORT $LN1@AuSHMObtai

; 310  : 			mappings->start_addr = current_virt;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rcx, QWORD PTR current_virt$7[rsp]
	mov	QWORD PTR [rax], rcx
$LN1@AuSHMObtai:

; 311  : 	}

	jmp	SHORT $LN3@AuSHMObtai
$LN2@AuSHMObtai:

; 312  : 
; 313  : 	mappings->length = mem->num_frames * PAGE_SIZE;

	mov	rax, QWORD PTR mem$[rsp]
	imul	eax, DWORD PTR [rax+4], 4096		; 00001000H
	mov	eax, eax
	mov	rcx, QWORD PTR mappings$[rsp]
	mov	QWORD PTR [rcx+8], rax

; 314  : 	mappings->shm = mem;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rcx, QWORD PTR mem$[rsp]
	mov	QWORD PTR [rax+16], rcx

; 315  : 	list_add(proc->shmmaps, mappings);

	mov	rdx, QWORD PTR mappings$[rsp]
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1080]
	call	list_add

; 316  : 	/* Now order the list, in ascending order */
; 317  : 	AuSHMProcOrderList(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMProcOrderList@@YAXPEAU_au_proc_@@@Z ; AuSHMProcOrderList

; 318  : 	AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 319  : 	return (void*)mappings->start_addr;

	mov	rax, QWORD PTR mappings$[rsp]
	mov	rax, QWORD PTR [rax]
$LN21@AuSHMObtai:

; 320  : }

	add	rsp, 152				; 00000098H
	ret	0
?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z ENDP	; AuSHMObtainMem
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
i$1 = 32
tv80 = 36
shm$ = 40
proc$ = 64
key$ = 72
sz$ = 80
flags$ = 88
?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z PROC		; AuCreateSHM

; 102  : int AuCreateSHM(AuProcess* proc, uint16_t key, size_t sz, uint8_t flags) {

$LN10:
	mov	BYTE PTR [rsp+32], r9b
	mov	QWORD PTR [rsp+24], r8
	mov	WORD PTR [rsp+16], dx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 103  : 	AuSHM* shm = NULL;

	mov	QWORD PTR shm$[rsp], 0

; 104  : 	AuAcquireSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuAcquireSpinlock

; 105  : 	/*  search if it's already created */
; 106  : 	shm = AuGetSHMSeg(key);

	movzx	ecx, WORD PTR key$[rsp]
	call	?AuGetSHMSeg@@YAPEAU_shm_@@G@Z		; AuGetSHMSeg
	mov	QWORD PTR shm$[rsp], rax

; 107  : 	/* create a new*/
; 108  : 	if (!shm) {

	cmp	QWORD PTR shm$[rsp], 0
	jne	$LN5@AuCreateSH

; 109  : 		shm = (AuSHM*)kmalloc(sizeof(AuSHM));

	mov	ecx, 18
	call	kmalloc
	mov	QWORD PTR shm$[rsp], rax

; 110  : 		memset(shm, 0, sizeof(AuSHM));

	mov	r8d, 18
	xor	edx, edx
	mov	rcx, QWORD PTR shm$[rsp]
	call	memset

; 111  : 		shm->id = AuSHMGetID();

	call	?AuSHMGetID@@YAGXZ			; AuSHMGetID
	mov	rcx, QWORD PTR shm$[rsp]
	mov	WORD PTR [rcx+2], ax

; 112  : 		shm->key = key;

	mov	rax, QWORD PTR shm$[rsp]
	movzx	ecx, WORD PTR key$[rsp]
	mov	WORD PTR [rax], cx

; 113  : 		shm->num_frames = (sz / 0x1000) + ((sz % 0x1000) ? 1 : 0);

	xor	edx, edx
	mov	rax, QWORD PTR sz$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN8@AuCreateSH
	mov	DWORD PTR tv80[rsp], 1
	jmp	SHORT $LN9@AuCreateSH
$LN8@AuCreateSH:
	mov	DWORD PTR tv80[rsp], 0
$LN9@AuCreateSH:
	xor	edx, edx
	mov	rax, QWORD PTR sz$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	movsxd	rcx, DWORD PTR tv80[rsp]
	add	rax, rcx
	mov	rcx, QWORD PTR shm$[rsp]
	mov	DWORD PTR [rcx+4], eax

; 114  : 		shm->link_count = 0;

	xor	eax, eax
	mov	rcx, QWORD PTR shm$[rsp]
	mov	WORD PTR [rcx+16], ax

; 115  : 		shm->frames = (uint64_t*)kmalloc(sizeof(uint64_t)* shm->num_frames);

	mov	rax, QWORD PTR shm$[rsp]
	mov	eax, DWORD PTR [rax+4]
	shl	rax, 3
	mov	ecx, eax
	call	kmalloc
	mov	rcx, QWORD PTR shm$[rsp]
	mov	QWORD PTR [rcx+8], rax

; 116  : 		for (int i = 0; i < shm->num_frames; i++)  {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuCreateSH
$LN3@AuCreateSH:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuCreateSH:
	mov	rax, QWORD PTR shm$[rsp]
	mov	eax, DWORD PTR [rax+4]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN2@AuCreateSH

; 117  : 			shm->frames[i] = (uint64_t)AuPmmngrAlloc();

	call	AuPmmngrAlloc
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR shm$[rsp]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rdx+rcx*8], rax

; 118  : 		}

	jmp	SHORT $LN3@AuCreateSH
$LN2@AuCreateSH:

; 119  : 
; 120  : 		list_add(shm_list, shm);

	mov	rdx, QWORD PTR shm$[rsp]
	mov	rcx, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	call	list_add
$LN5@AuCreateSH:

; 121  : 	}
; 122  : 
; 123  : 	if (!shm) {

	cmp	QWORD PTR shm$[rsp], 0
	jne	SHORT $LN1@AuCreateSH

; 124  : 		AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 125  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN6@AuCreateSH
$LN1@AuCreateSH:

; 126  : 	}
; 127  : 
; 128  : 	AuReleaseSpinlock(shmlock);

	mov	rcx, QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA ; shmlock
	call	AuReleaseSpinlock

; 129  : 	return shm->id;

	mov	rax, QWORD PTR shm$[rsp]
	movzx	eax, WORD PTR [rax+2]
$LN6@AuCreateSH:

; 130  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z ENDP		; AuCreateSHM
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
i$1 = 32
shm$2 = 40
id$ = 64
?AuGetSHMByID@@YAPEAU_shm_@@G@Z PROC			; AuGetSHMByID

; 85   : AuSHM * AuGetSHMByID(uint16_t id) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 86   : 	for (int i = 0; i < shm_list->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuGetSHMBy
$LN3@AuGetSHMBy:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuGetSHMBy:
	mov	rax, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN2@AuGetSHMBy

; 87   : 		AuSHM* shm = (AuSHM*)list_get_at(shm_list, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ?shm_list@@3PEAU_list_@@EA ; shm_list
	call	list_get_at
	mov	QWORD PTR shm$2[rsp], rax

; 88   : 		if (shm->id == id)

	mov	rax, QWORD PTR shm$2[rsp]
	movzx	eax, WORD PTR [rax+2]
	movzx	ecx, WORD PTR id$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN1@AuGetSHMBy

; 89   : 			return shm;

	mov	rax, QWORD PTR shm$2[rsp]
	jmp	SHORT $LN5@AuGetSHMBy
$LN1@AuGetSHMBy:

; 90   : 	}

	jmp	SHORT $LN3@AuGetSHMBy
$LN2@AuGetSHMBy:

; 91   : 
; 92   : 	return NULL;

	xor	eax, eax
$LN5@AuGetSHMBy:

; 93   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuGetSHMByID@@YAPEAU_shm_@@G@Z ENDP			; AuGetSHMByID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\shm.cpp
_TEXT	SEGMENT
?AuInitialiseSHMMan@@YAXXZ PROC				; AuInitialiseSHMMan

; 49   : void AuInitialiseSHMMan() {

$LN3:
	sub	rsp, 40					; 00000028H

; 50   : 	shm_list = initialize_list();

	call	initialize_list
	mov	QWORD PTR ?shm_list@@3PEAU_list_@@EA, rax ; shm_list

; 51   : 	shm_id = 1;

	mov	eax, 1
	mov	WORD PTR ?shm_id@@3GA, ax		; shm_id

; 52   : 	shmlock = AuCreateSpinlock(false);

	xor	ecx, ecx
	call	AuCreateSpinlock
	mov	QWORD PTR ?shmlock@@3PEAU_spinlock_@@EA, rax ; shmlock

; 53   : }

	add	rsp, 40					; 00000028H
	ret	0
?AuInitialiseSHMMan@@YAXXZ ENDP				; AuInitialiseSHMMan
_TEXT	ENDS
END
