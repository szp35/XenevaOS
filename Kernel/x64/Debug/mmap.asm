; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?shmmaplist@@3PEAU_list_@@EA			; shmmaplist
_BSS	SEGMENT
?shmmaplist@@3PEAU_list_@@EA DQ 01H DUP (?)		; shmmaplist
_BSS	ENDS
CONST	SEGMENT
$SG3539	DB	'/', 00H
	ORG $+6
$SG3557	DB	'mmap reading file ', 0dH, 0aH, 00H
	ORG $+3
$SG3567	DB	'SHOBJ newly created -> %s ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?SharedMemMapListInitialise@@YAXXZ		; SharedMemMapListInitialise
PUBLIC	?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z		; CreateMemMapping
PUBLIC	?MemMapDirty@@YAXPEAX_KHH@Z			; MemMapDirty
PUBLIC	?UnmapMemMapping@@YAXPEAX_K@Z			; UnmapMemMapping
PUBLIC	?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z ; AuCreateSharedMmapObject
PUBLIC	?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z ; AuAddSharedMmapObject
PUBLIC	?AuRemoveSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z ; AuRemoveSharedMmapObject
PUBLIC	?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z ; AuSharedMmapObjectFindByName
EXTRN	strcmp:PROC
EXTRN	strcpy:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuGetFreePage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	initialize_list:PROC
EXTRN	list_add:PROC
EXTRN	list_remove:PROC
EXTRN	list_get_at:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuVFSGetBlockFor:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	SeTextOut:PROC
EXTRN	x64_cli:PROC
pdata	SEGMENT
$pdata$?SharedMemMapListInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+21
	DD	imagerel $unwind$?SharedMemMapListInitialise@@YAXXZ
$pdata$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z DD imagerel $LN32
	DD	imagerel $LN32+1249
	DD	imagerel $unwind$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z
$pdata$?MemMapDirty@@YAXPEAX_KHH@Z DD imagerel $LN13
	DD	imagerel $LN13+383
	DD	imagerel $unwind$?MemMapDirty@@YAXPEAX_KHH@Z
$pdata$?UnmapMemMapping@@YAXPEAX_K@Z DD imagerel $LN10
	DD	imagerel $LN10+304
	DD	imagerel $unwind$?UnmapMemMapping@@YAXPEAX_K@Z
$pdata$?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z DD imagerel $LN3
	DD	imagerel $LN3+115
	DD	imagerel $unwind$?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z
$pdata$?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+31
	DD	imagerel $unwind$?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z
$pdata$?AuRemoveSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+123
	DD	imagerel $unwind$?AuRemoveSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z
$pdata$?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z DD imagerel $LN7
	DD	imagerel $LN7+103
	DD	imagerel $unwind$?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?SharedMemMapListInitialise@@YAXXZ DD 010401H
	DD	04204H
$unwind$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z DD 021b01H
	DD	013011bH
$unwind$?MemMapDirty@@YAXPEAX_KHH@Z DD 011801H
	DD	0a218H
$unwind$?UnmapMemMapping@@YAXPEAX_K@Z DD 010e01H
	DD	0a20eH
$unwind$?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z DD 010901H
	DD	06209H
$unwind$?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z DD 010901H
	DD	04209H
$unwind$?AuRemoveSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z DD 010901H
	DD	06209H
$unwind$?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
obj_$2 = 40
name$ = 64
?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z PROC ; AuSharedMmapObjectFindByName

; 98   : AuSharedMmapObject* AuSharedMmapObjectFindByName(char* name) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 99   : 	for (int i = 0; i < shmmaplist->pointer; i++){

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuSharedMm
$LN3@AuSharedMm:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuSharedMm:
	mov	rax, QWORD PTR ?shmmaplist@@3PEAU_list_@@EA ; shmmaplist
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN2@AuSharedMm

; 100  : 		AuSharedMmapObject* obj_ = (AuSharedMmapObject*)list_get_at(shmmaplist, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ?shmmaplist@@3PEAU_list_@@EA ; shmmaplist
	call	list_get_at
	mov	QWORD PTR obj_$2[rsp], rax

; 101  : 		if (strcmp(obj_->objectName, name) == 0)

	mov	rdx, QWORD PTR name$[rsp]
	mov	rax, QWORD PTR obj_$2[rsp]
	mov	rcx, QWORD PTR [rax]
	call	strcmp
	test	eax, eax
	jne	SHORT $LN1@AuSharedMm

; 102  : 			return obj_;

	mov	rax, QWORD PTR obj_$2[rsp]
	jmp	SHORT $LN5@AuSharedMm
$LN1@AuSharedMm:

; 103  : 	}

	jmp	SHORT $LN3@AuSharedMm
$LN2@AuSharedMm:

; 104  : 	return NULL;

	xor	eax, eax
$LN5@AuSharedMm:

; 105  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z ENDP ; AuSharedMmapObjectFindByName
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
obj_$2 = 40
obj$ = 64
?AuRemoveSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z PROC ; AuRemoveSharedMmapObject

; 88   : void AuRemoveSharedMmapObject(AuSharedMmapObject* obj) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 89   : 	for (int i = 0; i < shmmaplist->pointer; i++){

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuRemoveSh
$LN3@AuRemoveSh:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuRemoveSh:
	mov	rax, QWORD PTR ?shmmaplist@@3PEAU_list_@@EA ; shmmaplist
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN2@AuRemoveSh

; 90   : 		AuSharedMmapObject* obj_ = (AuSharedMmapObject*)list_get_at(shmmaplist, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ?shmmaplist@@3PEAU_list_@@EA ; shmmaplist
	call	list_get_at
	mov	QWORD PTR obj_$2[rsp], rax

; 91   : 		if (obj_ == obj)

	mov	rax, QWORD PTR obj$[rsp]
	cmp	QWORD PTR obj_$2[rsp], rax
	jne	SHORT $LN1@AuRemoveSh

; 92   : 			list_remove(shmmaplist, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ?shmmaplist@@3PEAU_list_@@EA ; shmmaplist
	call	list_remove
$LN1@AuRemoveSh:

; 93   : 	}

	jmp	SHORT $LN3@AuRemoveSh
$LN2@AuRemoveSh:

; 94   : 	kfree(obj->objectName);

	mov	rax, QWORD PTR obj$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	kfree

; 95   : 	kfree(obj);

	mov	rcx, QWORD PTR obj$[rsp]
	call	kfree

; 96   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuRemoveSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z ENDP ; AuRemoveSharedMmapObject
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
obj$ = 48
?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z PROC ; AuAddSharedMmapObject

; 84   : void AuAddSharedMmapObject(AuSharedMmapObject* obj) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 85   : 	list_add(shmmaplist, obj);

	mov	rdx, QWORD PTR obj$[rsp]
	mov	rcx, QWORD PTR ?shmmaplist@@3PEAU_list_@@EA ; shmmaplist
	call	list_add

; 86   : }

	add	rsp, 40					; 00000028H
	ret	0
?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z ENDP ; AuAddSharedMmapObject
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
obj$ = 32
name$ = 64
?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z PROC ; AuCreateSharedMmapObject

; 75   : AuSharedMmapObject* AuCreateSharedMmapObject(char* name) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 76   : 	AuSharedMmapObject* obj = (AuSharedMmapObject*)kmalloc(sizeof(AuSharedMmapObject));

	mov	ecx, 30
	call	kmalloc
	mov	QWORD PTR obj$[rsp], rax

; 77   : 	memset(obj, 0, sizeof(AuSharedMmapObject));

	mov	r8d, 30
	xor	edx, edx
	mov	rcx, QWORD PTR obj$[rsp]
	call	memset

; 78   : 	obj->objectName = (char*)kmalloc(strlen(name));

	mov	rcx, QWORD PTR name$[rsp]
	call	strlen
	mov	ecx, eax
	call	kmalloc
	mov	rcx, QWORD PTR obj$[rsp]
	mov	QWORD PTR [rcx], rax

; 79   : 	strcpy(obj->objectName, name);

	mov	rdx, QWORD PTR name$[rsp]
	mov	rax, QWORD PTR obj$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	strcpy

; 80   : 	obj->linkCount += 1;

	mov	rax, QWORD PTR obj$[rsp]
	movzx	eax, WORD PTR [rax+26]
	inc	eax
	mov	rcx, QWORD PTR obj$[rsp]
	mov	WORD PTR [rcx+26], ax

; 81   : 	return obj;

	mov	rax, QWORD PTR obj$[rsp]

; 82   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z ENDP ; AuCreateSharedMmapObject
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
page$2 = 40
tv69 = 48
phys$3 = 56
tv71 = 64
addr$ = 72
address$ = 96
len$ = 104
?UnmapMemMapping@@YAXPEAX_K@Z PROC			; UnmapMemMapping

; 272  : void UnmapMemMapping(void* address, size_t len) {

$LN10:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 273  : 	x64_cli();

	call	x64_cli

; 274  : 	if (!len)

	cmp	QWORD PTR len$[rsp], 0
	jne	SHORT $LN5@UnmapMemMa

; 275  : 		return;

	jmp	$LN6@UnmapMemMa
$LN5@UnmapMemMa:

; 276  : 
; 277  : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN8@UnmapMemMa
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv69[rsp], rax
	jmp	SHORT $LN9@UnmapMemMa
$LN8@UnmapMemMa:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv69[rsp], rax
$LN9@UnmapMemMa:
	mov	rax, QWORD PTR tv69[rsp]
	mov	QWORD PTR len$[rsp], rax

; 278  : 	uint64_t addr = (uint64_t)address;

	mov	rax, QWORD PTR address$[rsp]
	mov	QWORD PTR addr$[rsp], rax

; 279  : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@UnmapMemMa
$LN3@UnmapMemMa:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@UnmapMemMa:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv71[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv71[rsp]
	cmp	rcx, rax
	jae	$LN2@UnmapMemMa

; 280  : 		AuVPage* page = AuVmmngrGetPage(addr + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 281  : 		uint64_t phys = page->bits.page << PAGE_SHIFT;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	QWORD PTR phys$3[rsp], rax

; 282  : 		if (phys) 

	cmp	QWORD PTR phys$3[rsp], 0
	je	SHORT $LN1@UnmapMemMa

; 283  : 			AuPmmngrFree((void*)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuPmmngrFree
$LN1@UnmapMemMa:

; 284  : 
; 285  : 		page->bits.page = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 286  : 		page->bits.present = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 287  : 	}

	jmp	$LN3@UnmapMemMa
$LN2@UnmapMemMa:
$LN6@UnmapMemMa:

; 288  : 
; 289  : }

	add	rsp, 88					; 00000058H
	ret	0
?UnmapMemMapping@@YAXPEAX_K@Z ENDP			; UnmapMemMapping
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
page$2 = 40
tv68 = 48
tv70 = 56
startAddr$ = 64
startingVaddr$ = 96
len$ = 104
flags$ = 112
prot$ = 120
?MemMapDirty@@YAXPEAX_KHH@Z PROC			; MemMapDirty

; 244  : void MemMapDirty(void* startingVaddr, size_t len, int flags, int prot) {

$LN13:
	mov	DWORD PTR [rsp+32], r9d
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 245  : 	x64_cli();

	call	x64_cli

; 246  : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN11@MemMapDirt
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv68[rsp], rax
	jmp	SHORT $LN12@MemMapDirt
$LN11@MemMapDirt:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv68[rsp], rax
$LN12@MemMapDirt:
	mov	rax, QWORD PTR tv68[rsp]
	mov	QWORD PTR len$[rsp], rax

; 247  : 	uint64_t startAddr = (uint64_t)startingVaddr;

	mov	rax, QWORD PTR startingVaddr$[rsp]
	mov	QWORD PTR startAddr$[rsp], rax

; 248  : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN8@MemMapDirt
$LN7@MemMapDirt:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN8@MemMapDirt:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv70[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv70[rsp]
	cmp	rcx, rax
	jae	$LN6@MemMapDirt

; 249  : 		AuVPage *page = AuVmmngrGetPage(startAddr + i * PAGE_SIZE, NULL, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR startAddr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 2
	xor	edx, edx
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 250  : 
; 251  : 		/* check for  protection flag */
; 252  : 		if (prot & PROTECTION_FLAG_READONLY)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN5@MemMapDirt

; 253  : 			page->bits.writable = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -3
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN5@MemMapDirt:

; 254  : 		if (prot & PROTECTION_FLAG_NO_EXEC)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN4@MemMapDirt

; 255  : 			page->bits.nx = 1;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, 4503599627370496			; 0010000000000000H
	mov	rax, QWORD PTR [rax]
	or	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN4@MemMapDirt:

; 256  : 		if (prot & PROTECTION_FLAG_NO_CACHE)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN3@MemMapDirt

; 257  : 			page->bits.cache_disable = 1;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	or	rax, 16
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN3@MemMapDirt:

; 258  : 		if (prot & PROTECTION_FLAG_READONLY && prot & PROTECTION_FLAG_WRITE)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN2@MemMapDirt
	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN2@MemMapDirt

; 259  : 			page->bits.writable = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -3
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN2@MemMapDirt:

; 260  : 
; 261  : 		if (flags & MEMMAP_FLAG_COW)

	mov	eax, DWORD PTR flags$[rsp]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN1@MemMapDirt

; 262  : 			page->bits.cow = 1;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	bts	rax, 9
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN1@MemMapDirt:

; 263  : 	}

	jmp	$LN7@MemMapDirt
$LN6@MemMapDirt:

; 264  : }

	add	rsp, 88					; 00000058H
	ret	0
?MemMapDirty@@YAXPEAX_KHH@Z ENDP			; MemMapDirty
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
shobj_new_create$ = 32
shobj_len_increase$ = 33
shobj$ = 40
i$1 = 48
page$2 = 56
file$ = 64
startingPhysAddr$ = 72
phys$3 = 80
lookup_addr$ = 88
proc$ = 96
fsys$ = 104
tv81 = 112
file_block_start$4 = 120
curr_thr$ = 128
tv150 = 136
address$ = 160
len$ = 168
prot$ = 176
flags$ = 184
fd$ = 192
offset$ = 200
?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z PROC		; CreateMemMapping

; 118  : 	uint64_t offset) {

$LN32:
	mov	DWORD PTR [rsp+32], r9d
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 152				; 00000098H

; 119  : 	x64_cli();

	call	x64_cli

; 120  : 
; 121  : 	if (!len)

	cmp	QWORD PTR len$[rsp], 0
	jne	SHORT $LN27@CreateMemM

; 122  : 		return 0;

	xor	eax, eax
	jmp	$LN28@CreateMemM
$LN27@CreateMemM:

; 123  : 
; 124  : 	/* for now, memory mapping doesn't support lazy loading 
; 125  : 	 * so everything works at pre-paging */
; 126  : 
; 127  : 	AuThread* curr_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR curr_thr$[rsp], rax

; 128  : 	AuProcess* proc = AuProcessFindThread(curr_thr);

	mov	rcx, QWORD PTR curr_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 129  : 	AuVFSNode *file = NULL;

	mov	QWORD PTR file$[rsp], 0

; 130  : 	AuVFSNode* fsys = NULL;

	mov	QWORD PTR fsys$[rsp], 0

; 131  : 	uint64_t startingPhysAddr = NULL;

	mov	QWORD PTR startingPhysAddr$[rsp], 0

; 132  : 	bool shobj_len_increase = false;

	mov	BYTE PTR shobj_len_increase$[rsp], 0

; 133  : 	bool shobj_new_create = false;

	mov	BYTE PTR shobj_new_create$[rsp], 0

; 134  : 
; 135  : 	AuSharedMmapObject* shobj = NULL;

	mov	QWORD PTR shobj$[rsp], 0

; 136  : 	if (fd != -1) 

	cmp	DWORD PTR fd$[rsp], -1
	je	SHORT $LN26@CreateMemM

; 137  : 		file = proc->fds[fd];

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+576]
	mov	QWORD PTR file$[rsp], rax
$LN26@CreateMemM:

; 138  : 	
; 139  : 	size_t lookup_addr = NULL;

	mov	QWORD PTR lookup_addr$[rsp], 0

; 140  : 	if (!address)

	cmp	QWORD PTR address$[rsp], 0
	jne	SHORT $LN25@CreateMemM

; 141  : 		lookup_addr = (size_t)AuGetFreePage(true, (void*)PROCESS_MMAP_ADDRESS);

	mov	edx, -1073741824			; ffffffffc0000000H
	mov	cl, 1
	call	AuGetFreePage
	mov	QWORD PTR lookup_addr$[rsp], rax

; 142  : 	else

	jmp	SHORT $LN24@CreateMemM
$LN25@CreateMemM:

; 143  : 		lookup_addr = (size_t)address;

	mov	rax, QWORD PTR address$[rsp]
	mov	QWORD PTR lookup_addr$[rsp], rax
$LN24@CreateMemM:

; 144  : 
; 145  : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN30@CreateMemM
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv81[rsp], rax
	jmp	SHORT $LN31@CreateMemM
$LN30@CreateMemM:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv81[rsp], rax
$LN31@CreateMemM:
	mov	rax, QWORD PTR tv81[rsp]
	mov	QWORD PTR len$[rsp], rax

; 146  : 
; 147  : 
; 148  : 	if (file) {

	cmp	QWORD PTR file$[rsp], 0
	je	$LN23@CreateMemM

; 149  : 		uint64_t file_block_start = 0;

	mov	QWORD PTR file_block_start$4[rsp], 0

; 150  : 		fsys = AuVFSFind("/");

	lea	rcx, OFFSET FLAT:$SG3539
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 151  : 		if (!fsys && fd != -1)

	cmp	QWORD PTR fsys$[rsp], 0
	jne	SHORT $LN22@CreateMemM
	cmp	DWORD PTR fd$[rsp], -1
	je	SHORT $LN22@CreateMemM

; 152  : 			return 0;

	xor	eax, eax
	jmp	$LN28@CreateMemM
$LN22@CreateMemM:

; 153  : 		if (!(file->flags & FS_FLAG_DEVICE)) {

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN21@CreateMemM

; 154  : 			file_block_start = AuVFSGetBlockFor(fsys, file, offset);

	mov	r8, QWORD PTR offset$[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSGetBlockFor
	mov	QWORD PTR file_block_start$4[rsp], rax

; 155  : 			file->current = file_block_start;

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR file_block_start$4[rsp]
	mov	QWORD PTR [rax+56], rcx
$LN21@CreateMemM:

; 156  : 		}
; 157  : 
; 158  : 		if (flags & MEMMAP_FLAG_SHARED) {

	mov	eax, DWORD PTR flags$[rsp]
	and	eax, 1
	test	eax, eax
	je	$LN20@CreateMemM

; 159  : 			shobj = AuSharedMmapObjectFindByName(file->filename);

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, rax
	call	?AuSharedMmapObjectFindByName@@YAPEAU_sh_memap_object_@@PEAD@Z ; AuSharedMmapObjectFindByName
	mov	QWORD PTR shobj$[rsp], rax

; 160  : 			/* no shobject found with specified name, so we create
; 161  : 			 * new one */
; 162  : 			if (!shobj) {

	cmp	QWORD PTR shobj$[rsp], 0
	jne	SHORT $LN19@CreateMemM

; 163  : 				shobj = AuCreateSharedMmapObject(file->filename);

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, rax
	call	?AuCreateSharedMmapObject@@YAPEAU_sh_memap_object_@@PEAD@Z ; AuCreateSharedMmapObject
	mov	QWORD PTR shobj$[rsp], rax

; 164  : 				shobj->flags = flags;

	mov	rax, QWORD PTR shobj$[rsp]
	movzx	ecx, BYTE PTR flags$[rsp]
	mov	BYTE PTR [rax+8], cl

; 165  : 				shobj->len = 0;

	mov	rax, QWORD PTR shobj$[rsp]
	mov	QWORD PTR [rax+18], 0

; 166  : 				shobj->prot_flags = prot;

	mov	rax, QWORD PTR shobj$[rsp]
	movzx	ecx, BYTE PTR prot$[rsp]
	mov	BYTE PTR [rax+9], cl

; 167  : 				shobj->ownerProc = proc->proc_id;

	mov	rax, QWORD PTR shobj$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	movzx	ecx, WORD PTR [rcx]
	mov	WORD PTR [rax+28], cx

; 168  : 				AuAddSharedMmapObject(shobj);

	mov	rcx, QWORD PTR shobj$[rsp]
	call	?AuAddSharedMmapObject@@YAXPEAU_sh_memap_object_@@@Z ; AuAddSharedMmapObject

; 169  : 				shobj_new_create = true;

	mov	BYTE PTR shobj_new_create$[rsp], 1
$LN19@CreateMemM:

; 170  : 			}
; 171  : 			/* okay, already there is an shared object with this
; 172  : 			 * particular name, so check further
; 173  : 			 */
; 174  : 			if (shobj) {

	cmp	QWORD PTR shobj$[rsp], 0
	je	SHORT $LN18@CreateMemM

; 175  : 				/* firstly, check if the owner process is accessing,
; 176  : 				 * then simply we work on the shared object
; 177  : 				 */
; 178  : 				if (shobj->ownerProc == proc->proc_id) {

	mov	rax, QWORD PTR shobj$[rsp]
	movzx	eax, WORD PTR [rax+28]
	mov	rcx, QWORD PTR proc$[rsp]
	cmp	eax, DWORD PTR [rcx]
	jne	SHORT $LN17@CreateMemM

; 179  : 					shobj_len_increase = true;

	mov	BYTE PTR shobj_len_increase$[rsp], 1

; 180  : 				}
; 181  : 				else {

	jmp	SHORT $LN16@CreateMemM
$LN17@CreateMemM:

; 182  : 					/* we need to map that object here*/
; 183  : 					startingPhysAddr = shobj->beginPhysicalAddr;

	mov	rax, QWORD PTR shobj$[rsp]
	mov	rax, QWORD PTR [rax+10]
	mov	QWORD PTR startingPhysAddr$[rsp], rax
$LN16@CreateMemM:
$LN18@CreateMemM:
$LN20@CreateMemM:
$LN23@CreateMemM:

; 184  : 				}
; 185  : 			}
; 186  : 		}
; 187  : 	}
; 188  : 
; 189  : 	
; 190  : 
; 191  : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN15@CreateMemM
$LN14@CreateMemM:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN15@CreateMemM:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv150[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv150[rsp]
	cmp	rcx, rax
	jae	$LN13@CreateMemM

; 192  : 		uint64_t phys = 0;

	mov	QWORD PTR phys$3[rsp], 0

; 193  : 		if (startingPhysAddr && (flags & MEMMAP_FLAG_SHARED))

	cmp	QWORD PTR startingPhysAddr$[rsp], 0
	je	SHORT $LN12@CreateMemM
	mov	eax, DWORD PTR flags$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN12@CreateMemM

; 194  : 			phys = startingPhysAddr + i * PAGE_SIZE;

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR startingPhysAddr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR phys$3[rsp], rax

; 195  : 		else

	jmp	SHORT $LN11@CreateMemM
$LN12@CreateMemM:

; 196  : 			phys = (uint64_t)AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR phys$3[rsp], rax
$LN11@CreateMemM:

; 197  : 
; 198  : 		if (startingPhysAddr == 0 && shobj_new_create)

	cmp	QWORD PTR startingPhysAddr$[rsp], 0
	jne	SHORT $LN10@CreateMemM
	movzx	eax, BYTE PTR shobj_new_create$[rsp]
	test	eax, eax
	je	SHORT $LN10@CreateMemM

; 199  : 			startingPhysAddr = phys;

	mov	rax, QWORD PTR phys$3[rsp]
	mov	QWORD PTR startingPhysAddr$[rsp], rax
$LN10@CreateMemM:

; 200  : 
; 201  : 		if (file && !(flags & MEMMAP_FLAG_DISCARD_FILE_READ)){

	cmp	QWORD PTR file$[rsp], 0
	je	SHORT $LN9@CreateMemM
	mov	eax, DWORD PTR flags$[rsp]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN9@CreateMemM

; 202  : 			SeTextOut("mmap reading file \r\n");

	lea	rcx, OFFSET FLAT:$SG3557
	call	SeTextOut

; 203  : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)phys);

	mov	r8, QWORD PTR phys$3[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
$LN9@CreateMemM:

; 204  : 		}
; 205  : 		AuMapPage(phys, lookup_addr + i * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR lookup_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuMapPage

; 206  : 		AuVPage *page = AuVmmngrGetPage(lookup_addr + i * PAGE_SIZE, NULL, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR lookup_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 2
	xor	edx, edx
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 207  : 
; 208  : 		/* check for  protection flag */
; 209  : 		if (prot & PROTECTION_FLAG_READONLY)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN8@CreateMemM

; 210  : 			page->bits.writable = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -3
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN8@CreateMemM:

; 211  : 		if (prot & PROTECTION_FLAG_NO_EXEC)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN7@CreateMemM

; 212  : 			page->bits.nx = 1;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, 4503599627370496			; 0010000000000000H
	mov	rax, QWORD PTR [rax]
	or	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN7@CreateMemM:

; 213  : 		if (prot & PROTECTION_FLAG_NO_CACHE)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN6@CreateMemM

; 214  : 			page->bits.cache_disable = 1;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	or	rax, 16
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN6@CreateMemM:

; 215  : 		if (prot & PROTECTION_FLAG_READONLY && prot & PROTECTION_FLAG_WRITE)

	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN5@CreateMemM
	mov	eax, DWORD PTR prot$[rsp]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN5@CreateMemM

; 216  : 			page->bits.writable = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -3
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN5@CreateMemM:

; 217  : 
; 218  : 		if (flags & MEMMAP_FLAG_COW)

	mov	eax, DWORD PTR flags$[rsp]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN4@CreateMemM

; 219  : 			page->bits.cow = 1;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	bts	rax, 9
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax
$LN4@CreateMemM:

; 220  : 	}

	jmp	$LN14@CreateMemM
$LN13@CreateMemM:

; 221  : 
; 222  : 	/* shared bit should be handled differently */
; 223  : 	if (flags & MEMMAP_FLAG_SHARED && shobj) {

	mov	eax, DWORD PTR flags$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN3@CreateMemM
	cmp	QWORD PTR shobj$[rsp], 0
	je	SHORT $LN3@CreateMemM

; 224  : 		if (shobj_new_create){

	movzx	eax, BYTE PTR shobj_new_create$[rsp]
	test	eax, eax
	je	SHORT $LN2@CreateMemM

; 225  : 			shobj->beginPhysicalAddr = startingPhysAddr;

	mov	rax, QWORD PTR shobj$[rsp]
	mov	rcx, QWORD PTR startingPhysAddr$[rsp]
	mov	QWORD PTR [rax+10], rcx

; 226  : 			shobj->len = len;

	mov	rax, QWORD PTR shobj$[rsp]
	mov	rcx, QWORD PTR len$[rsp]
	mov	QWORD PTR [rax+18], rcx

; 227  : 			SeTextOut("SHOBJ newly created -> %s \r\n", shobj->objectName);

	mov	rax, QWORD PTR shobj$[rsp]
	mov	rdx, QWORD PTR [rax]
	lea	rcx, OFFSET FLAT:$SG3567
	call	SeTextOut
$LN2@CreateMemM:

; 228  : 		}
; 229  : 		if (shobj_len_increase)

	movzx	eax, BYTE PTR shobj_len_increase$[rsp]
	test	eax, eax
	je	SHORT $LN1@CreateMemM

; 230  : 			shobj->len += len;

	mov	rax, QWORD PTR shobj$[rsp]
	mov	rax, QWORD PTR [rax+18]
	add	rax, QWORD PTR len$[rsp]
	mov	rcx, QWORD PTR shobj$[rsp]
	mov	QWORD PTR [rcx+18], rax
$LN1@CreateMemM:
$LN3@CreateMemM:

; 231  : 	}
; 232  : 
; 233  : 	proc->proc_mmap_len += len;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1112]
	add	rax, QWORD PTR len$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1112], rax

; 234  : 	return (void*)lookup_addr;

	mov	rax, QWORD PTR lookup_addr$[rsp]
$LN28@CreateMemM:

; 235  : }

	add	rsp, 152				; 00000098H
	ret	0
?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z ENDP		; CreateMemMapping
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
?SharedMemMapListInitialise@@YAXXZ PROC			; SharedMemMapListInitialise

; 68   : void SharedMemMapListInitialise() {

$LN3:
	sub	rsp, 40					; 00000028H

; 69   : 	shmmaplist = initialize_list();

	call	initialize_list
	mov	QWORD PTR ?shmmaplist@@3PEAU_list_@@EA, rax ; shmmaplist

; 70   : }

	add	rsp, 40					; 00000028H
	ret	0
?SharedMemMapListInitialise@@YAXXZ ENDP			; SharedMemMapListInitialise
_TEXT	ENDS
END
