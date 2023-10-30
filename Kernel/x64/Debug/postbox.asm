; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?firstBox@@3PEAU_postbox_@@EA			; firstBox
PUBLIC	?lastBox@@3PEAU_postbox_@@EA			; lastBox
PUBLIC	?_PostBoxRootCreated@@3_NA			; _PostBoxRootCreated
_BSS	SEGMENT
?firstBox@@3PEAU_postbox_@@EA DQ 01H DUP (?)		; firstBox
?lastBox@@3PEAU_postbox_@@EA DQ 01H DUP (?)		; lastBox
?_PostBoxRootCreated@@3_NA DB 01H DUP (?)		; _PostBoxRootCreated
_BSS	ENDS
CONST	SEGMENT
$SG3718	DB	'/dev', 00H
	ORG $+3
$SG3723	DB	'postbox', 00H
$SG3724	DB	'/dev', 00H
CONST	ENDS
PUBLIC	?AuIPCPostBoxInitialise@@YAXXZ			; AuIPCPostBoxInitialise
PUBLIC	?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z	; PostBoxPutEvent
PUBLIC	?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ; PostBoxGetEvent
PUBLIC	?PostBoxCreate@@YAX_NG@Z			; PostBoxCreate
PUBLIC	?PostBoxDestroyByID@@YAXG@Z			; PostBoxDestroyByID
PUBLIC	?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z	; PostBoxAdvanceIndex
PUBLIC	?PostBoxRetreat@@YAXPEAU_postbox_@@@Z		; PostBoxRetreat
PUBLIC	?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z		; IsPostBoxEmpty
PUBLIC	?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z		; IsPostBoxFull
PUBLIC	?PostBoxDestroy@@YAXPEAU_postbox_@@@Z		; PostBoxDestroy
PUBLIC	?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z	; PostBoxIOControl
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuUnblockThread:PROC
EXTRN	AuThreadFindByID:PROC
EXTRN	AuThreadFindByIDBlockList:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	strcpy:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	x64_cli:PROC
EXTRN	__ImageBase:BYTE
pdata	SEGMENT
$pdata$?AuIPCPostBoxInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+163
	DD	imagerel $unwind$?AuIPCPostBoxInitialise@@YAXXZ
$pdata$?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z DD imagerel $LN10
	DD	imagerel $LN10+226
	DD	imagerel $unwind$?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z
$pdata$?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z DD imagerel $LN10
	DD	imagerel $LN10+257
	DD	imagerel $unwind$?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z
$pdata$?PostBoxCreate@@YAX_NG@Z DD imagerel $LN7
	DD	imagerel $LN7+303
	DD	imagerel $unwind$?PostBoxCreate@@YAX_NG@Z
$pdata$?PostBoxDestroyByID@@YAXG@Z DD imagerel $LN7
	DD	imagerel $LN7+82
	DD	imagerel $unwind$?PostBoxDestroyByID@@YAXG@Z
$pdata$?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z DD imagerel $LN6
	DD	imagerel $LN6+137
	DD	imagerel $unwind$?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z
$pdata$?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+65
	DD	imagerel $unwind$?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z
$pdata$?PostBoxDestroy@@YAXPEAU_postbox_@@@Z DD imagerel $LN8
	DD	imagerel $LN8+170
	DD	imagerel $unwind$?PostBoxDestroy@@YAXPEAU_postbox_@@@Z
$pdata$?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN13
	DD	imagerel $LN13+292
	DD	imagerel $unwind$?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuIPCPostBoxInitialise@@YAXXZ DD 010401H
	DD	06204H
$unwind$?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z DD 010901H
	DD	08209H
$unwind$?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z DD 011201H
	DD	06212H
$unwind$?PostBoxCreate@@YAX_NG@Z DD 010d01H
	DD	0620dH
$unwind$?PostBoxDestroyByID@@YAXG@Z DD 010901H
	DD	06209H
$unwind$?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z DD 010901H
	DD	02209H
$unwind$?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z DD 010901H
	DD	02209H
$unwind$?PostBoxDestroy@@YAXPEAU_postbox_@@@Z DD 010901H
	DD	04209H
$unwind$?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 011201H
	DD	0a212H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
tv66 = 32
ret_code$ = 36
curr_thr$ = 40
event$1 = 48
e$2 = 56
e$3 = 64
file$ = 96
code$ = 104
arg$ = 112
?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; PostBoxIOControl

; 208  : int PostBoxIOControl(AuVFSNode* file, int code, void* arg) {

$LN13:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 209  : 	x64_cli();

	call	x64_cli

; 210  : 	int ret_code = 1;

	mov	DWORD PTR ret_code$[rsp], 1

; 211  : 	AuThread* curr_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR curr_thr$[rsp], rax

; 212  : 	if (!curr_thr)

	cmp	QWORD PTR curr_thr$[rsp], 0
	jne	SHORT $LN9@PostBoxIOC

; 213  : 		return 0;

	xor	eax, eax
	jmp	$LN10@PostBoxIOC
$LN9@PostBoxIOC:

; 214  : 	switch (code) {

	mov	eax, DWORD PTR code$[rsp]
	mov	DWORD PTR tv66[rsp], eax
	mov	eax, DWORD PTR tv66[rsp]
	sub	eax, 401				; 00000191H
	mov	DWORD PTR tv66[rsp], eax
	cmp	DWORD PTR tv66[rsp], 5
	ja	$LN7@PostBoxIOC
	movsxd	rax, DWORD PTR tv66[rsp]
	lea	rcx, OFFSET FLAT:__ImageBase
	mov	eax, DWORD PTR $LN12@PostBoxIOC[rcx+rax*4]
	add	rax, rcx
	jmp	rax
$LN6@PostBoxIOC:

; 215  : 	case POSTBOX_CREATE: {
; 216  : 							
; 217  : 							 PostBoxCreate(false, curr_thr->id);

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	edx, WORD PTR [rax+301]
	xor	ecx, ecx
	call	?PostBoxCreate@@YAX_NG@Z		; PostBoxCreate

; 218  : 							 break;

	jmp	SHORT $LN7@PostBoxIOC
$LN5@PostBoxIOC:

; 219  : 	}
; 220  : 	case POSTBOX_CREATE_ROOT: {
; 221  : 								  PostBoxCreate(true, curr_thr->id);

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	edx, WORD PTR [rax+301]
	mov	cl, 1
	call	?PostBoxCreate@@YAX_NG@Z		; PostBoxCreate

; 222  : 								  break;

	jmp	SHORT $LN7@PostBoxIOC
$LN4@PostBoxIOC:

; 223  : 	}
; 224  : 	case POSTBOX_DESTROY: {
; 225  : 							  PostBoxDestroyByID(curr_thr->id);

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	ecx, WORD PTR [rax+301]
	call	?PostBoxDestroyByID@@YAXG@Z		; PostBoxDestroyByID

; 226  : 							  break;

	jmp	SHORT $LN7@PostBoxIOC
$LN3@PostBoxIOC:

; 227  : 	}
; 228  : 	case POSTBOX_PUT_EVENT: {
; 229  : 								PostEvent* event = (PostEvent*)arg;

	mov	rax, QWORD PTR arg$[rsp]
	mov	QWORD PTR event$1[rsp], rax

; 230  : 								PostBoxPutEvent(event);

	mov	rcx, QWORD PTR event$1[rsp]
	call	?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z ; PostBoxPutEvent

; 231  : 								break;

	jmp	SHORT $LN7@PostBoxIOC
$LN2@PostBoxIOC:

; 232  : 	}
; 233  : 
; 234  : 	case POSTBOX_GET_EVENT: {
; 235  : 								PostEvent* e = (PostEvent*)arg;

	mov	rax, QWORD PTR arg$[rsp]
	mov	QWORD PTR e$2[rsp], rax

; 236  : 								ret_code = PostBoxGetEvent(e, false, curr_thr);

	mov	r8, QWORD PTR curr_thr$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR e$2[rsp]
	call	?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ; PostBoxGetEvent
	mov	DWORD PTR ret_code$[rsp], eax

; 237  : 								break;

	jmp	SHORT $LN7@PostBoxIOC
$LN1@PostBoxIOC:

; 238  : 	}
; 239  : 	case POSTBOX_GET_EVENT_ROOT: {
; 240  : 									 PostEvent* e = (PostEvent*)arg;

	mov	rax, QWORD PTR arg$[rsp]
	mov	QWORD PTR e$3[rsp], rax

; 241  : 									 ret_code = PostBoxGetEvent(e, true, curr_thr);

	mov	r8, QWORD PTR curr_thr$[rsp]
	mov	dl, 1
	mov	rcx, QWORD PTR e$3[rsp]
	call	?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ; PostBoxGetEvent
	mov	DWORD PTR ret_code$[rsp], eax
$LN7@PostBoxIOC:

; 242  : 									 break;
; 243  : 	}
; 244  : 	}
; 245  : 
; 246  : 	return ret_code;

	mov	eax, DWORD PTR ret_code$[rsp]
$LN10@PostBoxIOC:

; 247  : }

	add	rsp, 88					; 00000058H
	ret	0
$LN12@PostBoxIOC:
	DD	$LN6@PostBoxIOC
	DD	$LN4@PostBoxIOC
	DD	$LN3@PostBoxIOC
	DD	$LN2@PostBoxIOC
	DD	$LN5@PostBoxIOC
	DD	$LN1@PostBoxIOC
?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; PostBoxIOControl
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
box$ = 48
?PostBoxDestroy@@YAXPEAU_postbox_@@@Z PROC		; PostBoxDestroy

; 111  : void PostBoxDestroy(PostBox* box) {

$LN8:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 112  : 	if (firstBox == NULL)

	cmp	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, 0 ; firstBox
	jne	SHORT $LN5@PostBoxDes

; 113  : 		return;

	jmp	$LN6@PostBoxDes
$LN5@PostBoxDes:

; 114  : 
; 115  : 	if (box == firstBox)

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	cmp	QWORD PTR box$[rsp], rax
	jne	SHORT $LN4@PostBoxDes

; 116  : 		firstBox = firstBox->next;

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, rax ; firstBox

; 117  : 	else

	jmp	SHORT $LN3@PostBoxDes
$LN4@PostBoxDes:

; 118  : 		box->prev->next = box->next;

	mov	rax, QWORD PTR box$[rsp]
	mov	rax, QWORD PTR [rax+29]
	mov	rcx, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR [rcx+21]
	mov	QWORD PTR [rax+21], rcx
$LN3@PostBoxDes:

; 119  : 
; 120  : 	if (box == lastBox) {

	mov	rax, QWORD PTR ?lastBox@@3PEAU_postbox_@@EA ; lastBox
	cmp	QWORD PTR box$[rsp], rax
	jne	SHORT $LN2@PostBoxDes

; 121  : 		lastBox = box->prev;

	mov	rax, QWORD PTR box$[rsp]
	mov	rax, QWORD PTR [rax+29]
	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, rax ; lastBox

; 122  : 	}
; 123  : 	else {

	jmp	SHORT $LN1@PostBoxDes
$LN2@PostBoxDes:

; 124  : 		box->next->prev = box->prev;

	mov	rax, QWORD PTR box$[rsp]
	mov	rax, QWORD PTR [rax+21]
	mov	rcx, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR [rcx+29]
	mov	QWORD PTR [rax+29], rcx
$LN1@PostBoxDes:

; 125  : 	}
; 126  : 
; 127  : 	AuPmmngrFree((void*)V2P((size_t)box->address));

	mov	rax, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 128  : 	kfree(box);

	mov	rcx, QWORD PTR box$[rsp]
	call	kfree
$LN6@PostBoxDes:

; 129  : }

	add	rsp, 40					; 00000028H
	ret	0
?PostBoxDestroy@@YAXPEAU_postbox_@@@Z ENDP		; PostBoxDestroy
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
box$ = 8
?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z PROC		; IsPostBoxFull

; 69   : bool IsPostBoxFull(PostBox* box) {

	mov	QWORD PTR [rsp+8], rcx

; 70   : 	return box->full;

	mov	rax, QWORD PTR box$[rsp]
	movzx	eax, BYTE PTR [rax+18]

; 71   : }

	ret	0
?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z ENDP		; IsPostBoxFull
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
tv70 = 0
box$ = 32
?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z PROC		; IsPostBoxEmpty

; 65   : bool IsPostBoxEmpty(PostBox* box) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 66   : 	return (!box->full && (box->headIdx == box->tailIdx));

	mov	rax, QWORD PTR box$[rsp]
	movzx	eax, BYTE PTR [rax+18]
	test	eax, eax
	jne	SHORT $LN3@IsPostBoxE
	mov	rax, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR box$[rsp]
	mov	ecx, DWORD PTR [rcx+14]
	cmp	DWORD PTR [rax+10], ecx
	jne	SHORT $LN3@IsPostBoxE
	mov	DWORD PTR tv70[rsp], 1
	jmp	SHORT $LN4@IsPostBoxE
$LN3@IsPostBoxE:
	mov	DWORD PTR tv70[rsp], 0
$LN4@IsPostBoxE:
	movzx	eax, BYTE PTR tv70[rsp]

; 67   : }

	add	rsp, 24
	ret	0
?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z ENDP		; IsPostBoxEmpty
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
box$ = 8
?PostBoxRetreat@@YAXPEAU_postbox_@@@Z PROC		; PostBoxRetreat

; 60   : void PostBoxRetreat(PostBox* box) {

	mov	QWORD PTR [rsp+8], rcx

; 61   : 	box->full = false;

	mov	rax, QWORD PTR box$[rsp]
	mov	BYTE PTR [rax+18], 0

; 62   : 	box->tailIdx = (box->tailIdx + 1) % box->size;

	mov	rax, QWORD PTR box$[rsp]
	mov	eax, DWORD PTR [rax+14]
	inc	eax
	mov	rcx, QWORD PTR box$[rsp]
	movzx	ecx, WORD PTR [rcx+19]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	rcx, QWORD PTR box$[rsp]
	mov	DWORD PTR [rcx+14], eax

; 63   : }

	ret	0
?PostBoxRetreat@@YAXPEAU_postbox_@@@Z ENDP		; PostBoxRetreat
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
tv83 = 0
box$ = 32
?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z PROC		; PostBoxAdvanceIndex

; 52   : void PostBoxAdvanceIndex(PostBox* box) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 53   : 	if (box->full)

	mov	rax, QWORD PTR box$[rsp]
	movzx	eax, BYTE PTR [rax+18]
	test	eax, eax
	je	SHORT $LN1@PostBoxAdv

; 54   : 		box->tailIdx = (box->tailIdx + 1) % box->size;

	mov	rax, QWORD PTR box$[rsp]
	mov	eax, DWORD PTR [rax+14]
	inc	eax
	mov	rcx, QWORD PTR box$[rsp]
	movzx	ecx, WORD PTR [rcx+19]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	rcx, QWORD PTR box$[rsp]
	mov	DWORD PTR [rcx+14], eax
$LN1@PostBoxAdv:

; 55   : 
; 56   : 	box->headIdx = (box->headIdx + 1) % box->size;

	mov	rax, QWORD PTR box$[rsp]
	mov	eax, DWORD PTR [rax+10]
	inc	eax
	mov	rcx, QWORD PTR box$[rsp]
	movzx	ecx, WORD PTR [rcx+19]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	rcx, QWORD PTR box$[rsp]
	mov	DWORD PTR [rcx+10], eax

; 57   : 	box->full = (box->headIdx == box->tailIdx);

	mov	rax, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR box$[rsp]
	mov	ecx, DWORD PTR [rcx+14]
	cmp	DWORD PTR [rax+10], ecx
	jne	SHORT $LN4@PostBoxAdv
	mov	DWORD PTR tv83[rsp], 1
	jmp	SHORT $LN5@PostBoxAdv
$LN4@PostBoxAdv:
	mov	DWORD PTR tv83[rsp], 0
$LN5@PostBoxAdv:
	mov	rax, QWORD PTR box$[rsp]
	movzx	ecx, BYTE PTR tv83[rsp]
	mov	BYTE PTR [rax+18], cl

; 58   : }

	add	rsp, 24
	ret	0
?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z ENDP		; PostBoxAdvanceIndex
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
box$1 = 32
id$ = 64
?PostBoxDestroyByID@@YAXG@Z PROC			; PostBoxDestroyByID

; 136  : void PostBoxDestroyByID(uint16_t id) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 137  : 	for (PostBox* box = firstBox; box != NULL; box = box->next) {

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	QWORD PTR box$1[rsp], rax
	jmp	SHORT $LN4@PostBoxDes
$LN3@PostBoxDes:
	mov	rax, QWORD PTR box$1[rsp]
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR box$1[rsp], rax
$LN4@PostBoxDes:
	cmp	QWORD PTR box$1[rsp], 0
	je	SHORT $LN2@PostBoxDes

; 138  : 		if (box->ownerID == id){

	mov	rax, QWORD PTR box$1[rsp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR id$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN1@PostBoxDes

; 139  : 			PostBoxDestroy(box);

	mov	rcx, QWORD PTR box$1[rsp]
	call	?PostBoxDestroy@@YAXPEAU_postbox_@@@Z	; PostBoxDestroy

; 140  : 			break;

	jmp	SHORT $LN2@PostBoxDes
$LN1@PostBoxDes:

; 141  : 		}
; 142  : 	}

	jmp	SHORT $LN3@PostBoxDes
$LN2@PostBoxDes:

; 143  : 	return;
; 144  : }

	add	rsp, 56					; 00000038H
	ret	0
?PostBoxDestroyByID@@YAXG@Z ENDP			; PostBoxDestroyByID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
box$ = 32
root$ = 64
tid$ = 72
?PostBoxCreate@@YAX_NG@Z PROC				; PostBoxCreate

; 78   : void PostBoxCreate(bool root, uint16_t tid) {

$LN7:
	mov	WORD PTR [rsp+16], dx
	mov	BYTE PTR [rsp+8], cl
	sub	rsp, 56					; 00000038H

; 79   : 	PostBox* box = (PostBox*)kmalloc(sizeof(PostBox));

	mov	ecx, 37					; 00000025H
	call	kmalloc
	mov	QWORD PTR box$[rsp], rax

; 80   : 	memset(box, 0, sizeof(PostBox));

	mov	r8d, 37					; 00000025H
	xor	edx, edx
	mov	rcx, QWORD PTR box$[rsp]
	call	memset

; 81   : 	box->address = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	rcx, QWORD PTR box$[rsp]
	mov	QWORD PTR [rcx], rax

; 82   : 	memset(box->address, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rax, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	memset

; 83   : 
; 84   : 	if (root &&  !_PostBoxRootCreated){

	movzx	eax, BYTE PTR root$[rsp]
	test	eax, eax
	je	SHORT $LN4@PostBoxCre
	movzx	eax, BYTE PTR ?_PostBoxRootCreated@@3_NA ; _PostBoxRootCreated
	test	eax, eax
	jne	SHORT $LN4@PostBoxCre

; 85   : 		box->ownerID = POSTBOX_ROOT_ID;

	mov	eax, 1
	mov	rcx, QWORD PTR box$[rsp]
	mov	WORD PTR [rcx+8], ax

; 86   : 		_PostBoxRootCreated = true;

	mov	BYTE PTR ?_PostBoxRootCreated@@3_NA, 1	; _PostBoxRootCreated

; 87   : 	}
; 88   : 	else {

	jmp	SHORT $LN3@PostBoxCre
$LN4@PostBoxCre:

; 89   : 		box->ownerID = tid;

	mov	rax, QWORD PTR box$[rsp]
	movzx	ecx, WORD PTR tid$[rsp]
	mov	WORD PTR [rax+8], cx
$LN3@PostBoxCre:

; 90   : 	}
; 91   : 
; 92   : 	box->next = NULL;

	mov	rax, QWORD PTR box$[rsp]
	mov	QWORD PTR [rax+21], 0

; 93   : 	box->prev = NULL;

	mov	rax, QWORD PTR box$[rsp]
	mov	QWORD PTR [rax+29], 0

; 94   : 	box->headIdx = 0;

	mov	rax, QWORD PTR box$[rsp]
	mov	DWORD PTR [rax+10], 0

; 95   : 	box->tailIdx = 0;

	mov	rax, QWORD PTR box$[rsp]
	mov	DWORD PTR [rax+14], 0

; 96   : 	box->full = false;

	mov	rax, QWORD PTR box$[rsp]
	mov	BYTE PTR [rax+18], 0

; 97   : 
; 98   : 	box->size = PAGE_SIZE / sizeof(PostEvent);

	mov	eax, 24
	mov	rcx, QWORD PTR box$[rsp]
	mov	WORD PTR [rcx+19], ax

; 99   : 
; 100  : 	if (firstBox == NULL) {

	cmp	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, 0 ; firstBox
	jne	SHORT $LN2@PostBoxCre

; 101  : 		firstBox = box;

	mov	rax, QWORD PTR box$[rsp]
	mov	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, rax ; firstBox

; 102  : 		lastBox = box;

	mov	rax, QWORD PTR box$[rsp]
	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, rax ; lastBox

; 103  : 	}
; 104  : 	else{

	jmp	SHORT $LN1@PostBoxCre
$LN2@PostBoxCre:

; 105  : 		lastBox->next = box;

	mov	rax, QWORD PTR ?lastBox@@3PEAU_postbox_@@EA ; lastBox
	mov	rcx, QWORD PTR box$[rsp]
	mov	QWORD PTR [rax+21], rcx

; 106  : 		box->prev = lastBox;

	mov	rax, QWORD PTR box$[rsp]
	mov	rcx, QWORD PTR ?lastBox@@3PEAU_postbox_@@EA ; lastBox
	mov	QWORD PTR [rax+29], rcx

; 107  : 		lastBox = box;

	mov	rax, QWORD PTR box$[rsp]
	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, rax ; lastBox
$LN1@PostBoxCre:

; 108  : 	}
; 109  : }

	add	rsp, 56					; 00000038H
	ret	0
?PostBoxCreate@@YAX_NG@Z ENDP				; PostBoxCreate
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
owner_id$ = 32
ret_code$ = 36
box$1 = 40
event$ = 64
root$ = 72
curr_thread$ = 80
?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z PROC ; PostBoxGetEvent

; 178  : int PostBoxGetEvent(PostEvent* event, bool root, AuThread* curr_thread) {

$LN10:
	mov	QWORD PTR [rsp+24], r8
	mov	BYTE PTR [rsp+16], dl
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 179  : 	int ret_code = POSTBOX_NO_EVENT;

	mov	DWORD PTR ret_code$[rsp], -1

; 180  : 	uint16_t owner_id = 0;

	xor	eax, eax
	mov	WORD PTR owner_id$[rsp], ax

; 181  : 	if (root)

	movzx	eax, BYTE PTR root$[rsp]
	test	eax, eax
	je	SHORT $LN7@PostBoxGet

; 182  : 		owner_id = POSTBOX_ROOT_ID;

	mov	eax, 1
	mov	WORD PTR owner_id$[rsp], ax

; 183  : 	else

	jmp	SHORT $LN6@PostBoxGet
$LN7@PostBoxGet:

; 184  : 		owner_id = curr_thread->id;

	mov	rax, QWORD PTR curr_thread$[rsp]
	movzx	eax, WORD PTR [rax+301]
	mov	WORD PTR owner_id$[rsp], ax
$LN6@PostBoxGet:

; 185  : 
; 186  : 	for (PostBox* box = firstBox; box != NULL; box = box->next) {

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	QWORD PTR box$1[rsp], rax
	jmp	SHORT $LN5@PostBoxGet
$LN4@PostBoxGet:
	mov	rax, QWORD PTR box$1[rsp]
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR box$1[rsp], rax
$LN5@PostBoxGet:
	cmp	QWORD PTR box$1[rsp], 0
	je	$LN3@PostBoxGet

; 187  : 		if (box->ownerID == owner_id) {

	mov	rax, QWORD PTR box$1[rsp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR owner_id$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN2@PostBoxGet

; 188  : 			if (!IsPostBoxEmpty(box)) {

	mov	rcx, QWORD PTR box$1[rsp]
	call	?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z	; IsPostBoxEmpty
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN1@PostBoxGet

; 189  : 				memcpy(event, &box->address[box->tailIdx], sizeof(PostEvent));

	mov	rax, QWORD PTR box$1[rsp]
	movsxd	rax, DWORD PTR [rax+14]
	mov	rcx, QWORD PTR box$1[rsp]
	mov	rcx, QWORD PTR [rcx]
	lea	rax, QWORD PTR [rcx+rax*8]
	mov	r8d, 169				; 000000a9H
	mov	rdx, rax
	mov	rcx, QWORD PTR event$[rsp]
	call	memcpy

; 190  : 				memset(&box->address[box->tailIdx], 0, sizeof(PostEvent));

	mov	rax, QWORD PTR box$1[rsp]
	movsxd	rax, DWORD PTR [rax+14]
	mov	rcx, QWORD PTR box$1[rsp]
	mov	rcx, QWORD PTR [rcx]
	lea	rax, QWORD PTR [rcx+rax*8]
	mov	r8d, 169				; 000000a9H
	xor	edx, edx
	mov	rcx, rax
	call	memset

; 191  : 				PostBoxRetreat(box);

	mov	rcx, QWORD PTR box$1[rsp]
	call	?PostBoxRetreat@@YAXPEAU_postbox_@@@Z	; PostBoxRetreat

; 192  : 				ret_code = 1;

	mov	DWORD PTR ret_code$[rsp], 1
$LN1@PostBoxGet:

; 193  : 			}
; 194  : 			break;

	jmp	SHORT $LN3@PostBoxGet
$LN2@PostBoxGet:

; 195  : 		}
; 196  : 	}

	jmp	$LN4@PostBoxGet
$LN3@PostBoxGet:

; 197  : 
; 198  : 	return ret_code;

	mov	eax, DWORD PTR ret_code$[rsp]

; 199  : }

	add	rsp, 56					; 00000038H
	ret	0
?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ENDP ; PostBoxGetEvent
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
owner_id$ = 32
box$1 = 40
thread$ = 48
event$ = 80
?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z PROC		; PostBoxPutEvent

; 150  : void PostBoxPutEvent(PostEvent* event) {

$LN10:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 151  : 	uint16_t owner_id = event->to_id;

	mov	rax, QWORD PTR event$[rsp]
	movzx	eax, WORD PTR [rax+1]
	mov	WORD PTR owner_id$[rsp], ax

; 152  : 	for (PostBox* box = firstBox; box != NULL; box = box->next) {

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	QWORD PTR box$1[rsp], rax
	jmp	SHORT $LN7@PostBoxPut
$LN6@PostBoxPut:
	mov	rax, QWORD PTR box$1[rsp]
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR box$1[rsp], rax
$LN7@PostBoxPut:
	cmp	QWORD PTR box$1[rsp], 0
	je	SHORT $LN5@PostBoxPut

; 153  : 		if (box->ownerID == owner_id){

	mov	rax, QWORD PTR box$1[rsp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR owner_id$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN4@PostBoxPut

; 154  : 			if (!IsPostBoxFull(box)) {

	mov	rcx, QWORD PTR box$1[rsp]
	call	?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z	; IsPostBoxFull
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN3@PostBoxPut

; 155  : 				memcpy(&box->address[box->headIdx], event, sizeof(PostEvent));

	mov	rax, QWORD PTR box$1[rsp]
	movsxd	rax, DWORD PTR [rax+10]
	mov	rcx, QWORD PTR box$1[rsp]
	mov	rcx, QWORD PTR [rcx]
	lea	rax, QWORD PTR [rcx+rax*8]
	mov	r8d, 169				; 000000a9H
	mov	rdx, QWORD PTR event$[rsp]
	mov	rcx, rax
	call	memcpy

; 156  : 				PostBoxAdvanceIndex(box);

	mov	rcx, QWORD PTR box$1[rsp]
	call	?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z ; PostBoxAdvanceIndex
$LN3@PostBoxPut:

; 157  : 			}
; 158  : 			break;

	jmp	SHORT $LN5@PostBoxPut
$LN4@PostBoxPut:

; 159  : 		}
; 160  : 	}

	jmp	SHORT $LN6@PostBoxPut
$LN5@PostBoxPut:

; 161  : 
; 162  : 	AuThread* thread = AuThreadFindByID(owner_id);

	movzx	ecx, WORD PTR owner_id$[rsp]
	call	AuThreadFindByID
	mov	QWORD PTR thread$[rsp], rax

; 163  : 	if (!thread)

	cmp	QWORD PTR thread$[rsp], 0
	jne	SHORT $LN2@PostBoxPut

; 164  : 		thread = AuThreadFindByIDBlockList(owner_id);

	movzx	ecx, WORD PTR owner_id$[rsp]
	call	AuThreadFindByIDBlockList
	mov	QWORD PTR thread$[rsp], rax
$LN2@PostBoxPut:

; 165  : 	if (thread != NULL && thread->state == THREAD_STATE_BLOCKED)

	cmp	QWORD PTR thread$[rsp], 0
	je	SHORT $LN1@PostBoxPut
	mov	rax, QWORD PTR thread$[rsp]
	movzx	eax, BYTE PTR [rax+300]
	cmp	eax, 3
	jne	SHORT $LN1@PostBoxPut

; 166  : 		AuUnblockThread(thread);

	mov	rcx, QWORD PTR thread$[rsp]
	call	AuUnblockThread
$LN1@PostBoxPut:

; 167  : 
; 168  : 	return;
; 169  : }

	add	rsp, 72					; 00000048H
	ret	0
?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z ENDP		; PostBoxPutEvent
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ipc\postbox.cpp
_TEXT	SEGMENT
node$ = 32
dev$ = 40
?AuIPCPostBoxInitialise@@YAXXZ PROC			; AuIPCPostBoxInitialise

; 253  : void AuIPCPostBoxInitialise() {

$LN3:
	sub	rsp, 56					; 00000038H

; 254  : 	firstBox = NULL;

	mov	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, 0 ; firstBox

; 255  : 	lastBox = NULL;

	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, 0 ; lastBox

; 256  : 	
; 257  : 	/* create the postbox file */
; 258  : 	AuVFSNode* dev = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:$SG3718
	call	AuVFSFind
	mov	QWORD PTR dev$[rsp], rax

; 259  : 	AuVFSNode* node = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 160				; 000000a0H
	call	kmalloc
	mov	QWORD PTR node$[rsp], rax

; 260  : 	memset(node, 0, sizeof(AuVFSNode));

	mov	r8d, 160				; 000000a0H
	xor	edx, edx
	mov	rcx, QWORD PTR node$[rsp]
	call	memset

; 261  : 	strcpy(node->filename, "postbox");

	mov	rax, QWORD PTR node$[rsp]
	lea	rdx, OFFSET FLAT:$SG3723
	mov	rcx, rax
	call	strcpy

; 262  : 	node->flags = FS_FLAG_GENERAL | FS_FLAG_DEVICE;

	mov	eax, 12
	mov	rcx, QWORD PTR node$[rsp]
	mov	WORD PTR [rcx+61], ax

; 263  : 	node->iocontrol = PostBoxIOControl;

	mov	rax, QWORD PTR node$[rsp]
	lea	rcx, OFFSET FLAT:?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; PostBoxIOControl
	mov	QWORD PTR [rax+152], rcx

; 264  : 	AuDevFSAddFile(dev,"/dev",  node);

	mov	r8, QWORD PTR node$[rsp]
	lea	rdx, OFFSET FLAT:$SG3724
	mov	rcx, QWORD PTR dev$[rsp]
	call	AuDevFSAddFile

; 265  : 
; 266  : 	_PostBoxRootCreated = false;

	mov	BYTE PTR ?_PostBoxRootCreated@@3_NA, 0	; _PostBoxRootCreated

; 267  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuIPCPostBoxInitialise@@YAXXZ ENDP			; AuIPCPostBoxInitialise
_TEXT	ENDS
END
