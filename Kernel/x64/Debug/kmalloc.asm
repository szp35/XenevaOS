; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3255	DB	'Request page not aligned to page boundary ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	AuHeapInitialize
PUBLIC	kmalloc
PUBLIC	krealloc
PUBLIC	kcalloc
PUBLIC	kfree
PUBLIC	kheap_debug
PUBLIC	kmalloc_debug_on
PUBLIC	?au_free_page@@YAXPEAXH@Z			; au_free_page
PUBLIC	?au_request_page@@YAPEAXH@Z			; au_request_page
PUBLIC	?next_power_of_two@@YAHI@Z			; next_power_of_two
PUBLIC	?align24@@YA_K_K@Z				; align24
PUBLIC	?au_split_block@@YAHPEAU_meta_data_@@_K@Z	; au_split_block
PUBLIC	?au_expand_kmalloc@@YAX_K@Z			; au_expand_kmalloc
PUBLIC	?merge_next@@YAXPEAU_meta_data_@@@Z		; merge_next
PUBLIC	?merge_prev@@YAXPEAU_meta_data_@@@Z		; merge_prev
EXTRN	AuMapPage:PROC
EXTRN	AuGetFreePage:PROC
EXTRN	AuFreePages:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	port_malloc:PROC
EXTRN	port_realloc:PROC
EXTRN	port_calloc:PROC
EXTRN	port_free:PROC
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$kmalloc DD imagerel $LN3
	DD	imagerel $LN3+22
	DD	imagerel $unwind$kmalloc
$pdata$krealloc DD imagerel $LN3
	DD	imagerel $LN3+32
	DD	imagerel $unwind$krealloc
$pdata$kcalloc DD imagerel $LN3
	DD	imagerel $LN3+34
	DD	imagerel $unwind$kcalloc
$pdata$kfree DD	imagerel $LN3
	DD	imagerel $LN3+24
	DD	imagerel $unwind$kfree
$pdata$?au_free_page@@YAXPEAXH@Z DD imagerel $LN3
	DD	imagerel $LN3+38
	DD	imagerel $unwind$?au_free_page@@YAXPEAXH@Z
$pdata$?au_request_page@@YAPEAXH@Z DD imagerel $LN9
	DD	imagerel $LN9+163
	DD	imagerel $unwind$?au_request_page@@YAPEAXH@Z
$pdata$?next_power_of_two@@YAHI@Z DD imagerel $LN6
	DD	imagerel $LN6+80
	DD	imagerel $unwind$?next_power_of_two@@YAHI@Z
$pdata$?align24@@YA_K_K@Z DD imagerel $LN5
	DD	imagerel $LN5+75
	DD	imagerel $unwind$?align24@@YA_K_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$kmalloc DD 010801H
	DD	04208H
$unwind$krealloc DD 010d01H
	DD	0420dH
$unwind$kcalloc DD 010e01H
	DD	0420eH
$unwind$kfree DD 010901H
	DD	04209H
$unwind$?au_free_page@@YAXPEAXH@Z DD 010d01H
	DD	0420dH
$unwind$?au_request_page@@YAPEAXH@Z DD 010801H
	DD	08208H
$unwind$?next_power_of_two@@YAHI@Z DD 010801H
	DD	02208H
$unwind$?align24@@YA_K_K@Z DD 010901H
	DD	02209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
meta$ = 8
?merge_prev@@YAXPEAU_meta_data_@@@Z PROC		; merge_prev

; 314  : void merge_prev(meta_data_t* meta) {

	mov	QWORD PTR [rsp+8], rcx

; 315  : #ifndef _USE_LIBALLOC
; 316  : 	if (meta->prev != NULL) {
; 317  : 		uint64_t meta_prev = (uint64_t)meta->prev;
; 318  : 		if (meta_prev < 0xFFFFE00000000000){
; 319  : 			//this block is corrupted
; 320  : 			SeTextOut("Meta found corrupted block %x \r\n", meta->prev);
; 321  : 			last_block->next = meta;
; 322  : 			meta->prev = last_block;
; 323  : 			meta->next = NULL;
; 324  : 			/*kheap_debug();
; 325  : 			for (;;);*/
; 326  : 			return;
; 327  : 		}
; 328  : 		if (meta->prev->magic == MAGIC_FREE){
; 329  : 			SeTextOut("Meta->prev->sz = %d , meta sz -> %d \r\n", meta->prev->size, meta->size);
; 330  : 			meta->prev->size += meta->size + sizeof(meta_data_t);
; 331  : 			SeTextOut("Meta->prev->sz after = %d \r\n", meta->prev->size);
; 332  : 			if (last_block == meta){
; 333  : 				last_block = meta->prev;
; 334  : 				SeTextOut("Last block sz -> %d \r\n", last_block->size);
; 335  : 				last_mark = (size_t)(last_block + last_block->size + sizeof(meta_data_t));
; 336  : 				for (;;);
; 337  : 			}
; 338  : 
; 339  : 			SeTextOut("Meta prev sz -> %d \r\n", meta->prev->size);
; 340  : 			meta->prev->next = meta->next;
; 341  : 			if (meta->prev->next)
; 342  : 				meta->prev->next->prev = meta->prev;
; 343  : 			
; 344  : 			//merge_next(meta->prev);
; 345  : 		}
; 346  : 			
; 347  : 	}
; 348  : #endif
; 349  : }

	ret	0
?merge_prev@@YAXPEAU_meta_data_@@@Z ENDP		; merge_prev
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
meta$ = 8
?merge_next@@YAXPEAU_meta_data_@@@Z PROC		; merge_next

; 276  : void merge_next(meta_data_t *meta) {

	mov	QWORD PTR [rsp+8], rcx

; 277  : #ifndef _USE_LIBALLOC
; 278  : 	if (meta->next == NULL)
; 279  : 		return;
; 280  : 	uint64_t addr_valid = (uint64_t)meta->next;
; 281  : 	//AuTextOut("merge next -> %x \n", meta->next);
; 282  : 	if (addr_valid < 0xFFFFE00000000000) {
; 283  : 		SeTextOut("Meta merge next corrupted %x , curr -> %x \r\n",addr_valid, meta);
; 284  : 		meta->next = NULL;
; 285  : 		return;
; 286  : 	}
; 287  : 
; 288  : 	if (!meta->next->magic == MAGIC_FREE)
; 289  : 		return;
; 290  : 	
; 291  : 	
; 292  : 	if (last_block == meta->next){
; 293  : 		last_block = meta;
; 294  : 		last_mark = (size_t)(last_block + last_block->size + sizeof(meta_data_t));
; 295  : 	}
; 296  : 
; 297  : 	
; 298  : 
; 299  : 	meta->size += meta->next->size + sizeof(meta_data_t);
; 300  : 	SeTextOut("Meta merge_next sz -> %d \r\n", meta->size);
; 301  : 
; 302  : 	if (meta->next->next != NULL)
; 303  : 		meta->next->next->prev = meta;
; 304  : 
; 305  : 	meta->next = meta->next->next;
; 306  : #endif
; 307  : }

	ret	0
?merge_next@@YAXPEAU_meta_data_@@@Z ENDP		; merge_next
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
req_size$ = 8
?au_expand_kmalloc@@YAX_K@Z PROC			; au_expand_kmalloc

; 159  : void au_expand_kmalloc(size_t req_size) {

	mov	QWORD PTR [rsp+8], rcx

; 160  : #ifndef _USE_LIBALLOC
; 161  : 	/*if ((req_size % 2) != 0)
; 162  : 		req_size = next_power_of_two(req_size);*/
; 163  : 
; 164  : 	req_size = align24(req_size);
; 165  : 	
; 166  : 	size_t req_pages = ((req_size + sizeof(meta_data_t)) / 0x1000) + 
; 167  : 		(((req_size + sizeof(meta_data_t)) % 0x1000) ? 1 : 0);
; 168  : 	//req_pages = (req_size + sizeof(meta_data_t)) / 4096 + 1;
; 169  : 	void* page = au_request_page(req_pages);
; 170  : 
; 171  : 	uint8_t* desc_addr = (uint8_t*)page;
; 172  : 	/* setup the first meta data block */
; 173  : 	meta_data_t *meta = (meta_data_t*)desc_addr;
; 174  : 
; 175  : 	//meta->free = true;
; 176  : 	meta->next = NULL;
; 177  : 	meta->prev = NULL;
; 178  : 	meta->magic = MAGIC_FREE;
; 179  : 	
; 180  : 	/* meta->size holds only the usable area size for user */
; 181  : 	meta->size = (req_pages * PAGE_SIZE) - sizeof(meta_data_t);
; 182  : 	meta->prev = last_block;
; 183  : 	
; 184  : 	if (!meta->prev) {
; 185  : 		AuTextOut("Corrupted Heap Area !! Kernel stucked \n");
; 186  : 		for (;;);
; 187  : 	}
; 188  : 	last_block->next = meta;
; 189  : 	last_block = meta;
; 190  : 
; 191  : 	
; 192  : 
; 193  : 	/* now check if we can merge the last block and this
; 194  : 	* into one
; 195  : 	*/
; 196  : 	if (meta->prev->magic == MAGIC_FREE) {
; 197  : 		meta->prev->size += meta->size - sizeof(meta_data_t);
; 198  : 		meta->prev->next = NULL;
; 199  : 		last_block = meta->prev;
; 200  : 	}
; 201  : 
; 202  : 	uint64_t lm = (uint64_t)page;
; 203  : 	last_mark = (uint64_t)(lm + (req_pages * 4096));
; 204  : #endif
; 205  : }

	ret	0
?au_expand_kmalloc@@YAX_K@Z ENDP			; au_expand_kmalloc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
splitable$ = 8
req_size$ = 16
?au_split_block@@YAHPEAU_meta_data_@@_K@Z PROC		; au_split_block

; 106  : int au_split_block(meta_data_t* splitable, size_t req_size) {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 107  : #ifndef _USE_LIBALLOC
; 108  : 	uint8_t* meta_block_a = (uint8_t*)splitable;
; 109  : 	size_t size = splitable->size - req_size - sizeof(meta_data_t);
; 110  : 
; 111  : 
; 112  : 	if (size <= sizeof(meta_data_t))
; 113  : 		return 1;
; 114  : 
; 115  : 
; 116  : 	uint8_t* new_block = (uint8_t*)((size_t)splitable + sizeof(meta_data_t) + req_size);
; 117  : 
; 118  : 	
; 119  : 	meta_data_t* new_block_m = (meta_data_t*)new_block;
; 120  : 	
; 121  : 	uint64_t new_block_pos = (uint64_t)new_block;
; 122  : 	
; 123  : 	if ((new_block_pos) >= last_mark) {
; 124  : 		SeTextOut("Aramse last mark \r\n");
; 125  : 		//for (;;);
; 126  : 		return 0;
; 127  : 	}
; 128  : 
; 129  : 	if ((new_block_pos + sizeof(meta_data_t)) >= last_mark){
; 130  : 		SeTextOut("Aramse Last mark \r\n");
; 131  : 		return 0;
; 132  : 	}
; 133  : 
; 134  : 	new_block_m->magic = MAGIC_FREE;
; 135  : 	new_block_m->prev = splitable;
; 136  : 	new_block_m->next = splitable->next;
; 137  : 	if (new_block_m->next != NULL)
; 138  : 		new_block_m->next->prev = new_block_m;
; 139  : 
; 140  : 
; 141  : 	new_block_m->size = size;
; 142  : 
; 143  : 
; 144  : 	splitable->size = req_size;
; 145  : 	splitable->next = new_block_m;
; 146  : 
; 147  : 
; 148  : 	if (last_block == splitable)
; 149  : 		last_block = new_block_m;
; 150  : #endif
; 151  : 
; 152  : 	return 1;

	mov	eax, 1

; 153  : }

	ret	0
?au_split_block@@YAHPEAU_meta_data_@@_K@Z ENDP		; au_split_block
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
alignment$ = 0
val$ = 32
?align24@@YA_K_K@Z PROC					; align24

; 93   : size_t align24(size_t val) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 94   : 	size_t alignment = 8;

	mov	QWORD PTR alignment$[rsp], 8

; 95   : 	if (val & (alignment - 1)) {

	mov	rax, QWORD PTR alignment$[rsp]
	dec	rax
	mov	rcx, QWORD PTR val$[rsp]
	and	rcx, rax
	mov	rax, rcx
	test	rax, rax
	je	SHORT $LN2@align24

; 96   : 		return (val | alignment - 1) + 1;

	mov	rax, QWORD PTR alignment$[rsp]
	dec	rax
	mov	rcx, QWORD PTR val$[rsp]
	or	rcx, rax
	mov	rax, rcx
	inc	rax
	jmp	SHORT $LN3@align24

; 97   : 	}
; 98   : 	else{

	jmp	SHORT $LN1@align24
$LN2@align24:

; 99   : 		return val;

	mov	rax, QWORD PTR val$[rsp]
$LN1@align24:
$LN3@align24:

; 100  : 	}
; 101  : }

	add	rsp, 24
	ret	0
?align24@@YA_K_K@Z ENDP					; align24
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
i$ = 0
tv74 = 4
val$ = 32
?next_power_of_two@@YAHI@Z PROC				; next_power_of_two

; 86   : int next_power_of_two(unsigned int val) {

$LN6:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 24

; 87   : 	int i = 0;

	mov	DWORD PTR i$[rsp], 0

; 88   : 	for (--val; val > 0; val >>= 1)

	mov	eax, DWORD PTR val$[rsp]
	dec	eax
	mov	DWORD PTR val$[rsp], eax
	jmp	SHORT $LN3@next_power
$LN2@next_power:
	mov	eax, DWORD PTR val$[rsp]
	shr	eax, 1
	mov	DWORD PTR val$[rsp], eax
$LN3@next_power:
	cmp	DWORD PTR val$[rsp], 0
	jbe	SHORT $LN1@next_power

; 89   : 		i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
	jmp	SHORT $LN2@next_power
$LN1@next_power:

; 90   : 	return 1 << i;

	mov	eax, DWORD PTR i$[rsp]
	mov	ecx, 1
	mov	DWORD PTR tv74[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv74[rsp]
	shl	eax, cl

; 91   : }

	add	rsp, 24
	ret	0
?next_power_of_two@@YAHI@Z ENDP				; next_power_of_two
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
i$1 = 32
page_$ = 40
page$ = 48
p$2 = 56
pages$ = 80
?au_request_page@@YAPEAXH@Z PROC			; au_request_page

; 422  : void* au_request_page(int pages) {

$LN9:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 72					; 00000048H

; 423  : 	uint64_t* page = AuGetFreePage(0, false);

	xor	edx, edx
	xor	ecx, ecx
	call	AuGetFreePage
	mov	QWORD PTR page$[rsp], rax

; 424  : 	uint64_t page_ = (uint64_t)page;

	mov	rax, QWORD PTR page$[rsp]
	mov	QWORD PTR page_$[rsp], rax

; 425  : 	
; 426  : 	for (size_t i = 0; i < pages; i++) {

	mov	QWORD PTR i$1[rsp], 0
	jmp	SHORT $LN6@au_request
$LN5@au_request:
	mov	rax, QWORD PTR i$1[rsp]
	inc	rax
	mov	QWORD PTR i$1[rsp], rax
$LN6@au_request:
	movsxd	rax, DWORD PTR pages$[rsp]
	cmp	QWORD PTR i$1[rsp], rax
	jae	SHORT $LN4@au_request

; 427  : 		void* p = AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR p$2[rsp], rax

; 428  : 		AuMapPage((uint64_t)p, page_ + i * 4096, 0);

	imul	rax, QWORD PTR i$1[rsp], 4096		; 00001000H
	mov	rcx, QWORD PTR page_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	xor	r8d, r8d
	mov	rdx, rax
	mov	rcx, QWORD PTR p$2[rsp]
	call	AuMapPage

; 429  : 	}

	jmp	SHORT $LN5@au_request
$LN4@au_request:

; 430  : 
; 431  : 	if ((page_ % PAGE_SIZE) != 0){

	xor	edx, edx
	mov	rax, QWORD PTR page_$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN3@au_request

; 432  : 		SeTextOut("Request page not aligned to page boundary \r\n");

	lea	rcx, OFFSET FLAT:$SG3255
	call	SeTextOut
$LN2@au_request:

; 433  : 		for (;;);

	jmp	SHORT $LN2@au_request
$LN3@au_request:

; 434  : 	}
; 435  : 	
; 436  : 	return page;

	mov	rax, QWORD PTR page$[rsp]

; 437  : }

	add	rsp, 72					; 00000048H
	ret	0
?au_request_page@@YAPEAXH@Z ENDP			; au_request_page
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
ptr$ = 48
pages$ = 56
?au_free_page@@YAXPEAXH@Z PROC				; au_free_page

; 445  : void au_free_page(void* ptr, int pages) {

$LN3:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 446  : 	AuFreePages((uint64_t)ptr, true, pages);

	movsxd	rax, DWORD PTR pages$[rsp]
	mov	r8, rax
	mov	dl, 1
	mov	rcx, QWORD PTR ptr$[rsp]
	call	AuFreePages

; 447  : }

	add	rsp, 40					; 00000028H
	ret	0
?au_free_page@@YAXPEAXH@Z ENDP				; au_free_page
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
bit$ = 8
kmalloc_debug_on PROC

; 450  : void kmalloc_debug_on(bool bit) {

	mov	BYTE PTR [rsp+8], cl

; 451  : #ifndef _USE_LIBALLOC
; 452  : 	_debug_on = bit;
; 453  : #endif
; 454  : }

	ret	0
kmalloc_debug_on ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
kheap_debug PROC

; 264  : #ifndef _USE_LIBALLOC
; 265  : 	for (meta_data_t *block = first_block; block != NULL; block = block->next) {
; 266  : 		SeTextOut("Prev -> %x || Current -> %x | Next -> %x \r\n", block->prev, block, block->next);
; 267  : 	}
; 268  : #endif
; 269  : }

	ret	0
kheap_debug ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
ptr$ = 48
kfree	PROC

; 355  : void kfree(void* ptr) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 356  : #ifdef _USE_LIBALLOC
; 357  : 	return port_free(ptr);

	mov	rcx, QWORD PTR ptr$[rsp]
	call	port_free

; 358  : #else
; 359  : 	if (!ptr) 
; 360  : 		return;
; 361  : 	if (((size_t)ptr % PAGE_SIZE) != 0)
; 362  : 		SeTextOut("KFREE: Ptr is not page-aligned \r\n");
; 363  : 
; 364  : 	uint8_t* actual_addr = (uint8_t*)ptr;
; 365  : 	meta_data_t *meta = (meta_data_t*)(actual_addr - sizeof(meta_data_t));
; 366  : 	if (meta->magic != MAGIC_USED) {
; 367  : 		AuTextOut("meta kfree corruption -> %x, meta -> %x , ptr -> %x\n", meta->magic, meta, ptr);
; 368  : 		AuTextOut("Other meta field sz -> %d , next-> %x, prev -> %x \n", meta->size, meta->next, meta->prev);
; 369  : 		return;
; 370  : 	}
; 371  : 	meta->magic = MAGIC_FREE;
; 372  : 
; 373  : 	/* merge it with 3 near blocks if they are free*/
; 374  : 	merge_next(meta);
; 375  : 	merge_prev(meta);
; 376  : #endif
; 377  : }

	add	rsp, 40					; 00000028H
	ret	0
kfree	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
n_item$ = 48
size$ = 56
kcalloc	PROC

; 406  : void* kcalloc(size_t n_item, size_t size) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 407  : #ifdef _USE_LIBALLOC
; 408  : 	return port_calloc(n_item, size);

	mov	rdx, QWORD PTR size$[rsp]
	mov	rcx, QWORD PTR n_item$[rsp]
	call	port_calloc

; 409  : #else
; 410  : 	size_t total = n_item * size;
; 411  : 
; 412  : 	void* ptr = kmalloc(total);
; 413  : 	if (ptr)
; 414  : 		memset(ptr, 0, total);
; 415  : 	return ptr;
; 416  : #endif
; 417  : }

	add	rsp, 40					; 00000028H
	ret	0
kcalloc	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
ptr$ = 48
new_size$ = 56
krealloc PROC

; 384  : void* krealloc(void* ptr, unsigned int new_size) {

$LN3:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 385  : #ifdef _USE_LIBALLOC
; 386  : 	return port_realloc(ptr, new_size);

	mov	edx, DWORD PTR new_size$[rsp]
	mov	rcx, QWORD PTR ptr$[rsp]
	call	port_realloc

; 387  : #else
; 388  : 	void* result = kmalloc(new_size);
; 389  : 	if (ptr) {
; 390  : 		/* here we can check the size difference
; 391  : 		* of new_size and old size from internal
; 392  : 		* data structure of kmalloc */
; 393  : 		memcpy(result, ptr, new_size);
; 394  : 	}
; 395  : 
; 396  : 	kfree(ptr);
; 397  : 	return result;
; 398  : #endif
; 399  : }

	add	rsp, 40					; 00000028H
	ret	0
krealloc ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
size$ = 48
kmalloc	PROC

; 211  : void* kmalloc(unsigned int size) {

$LN3:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 40					; 00000028H

; 212  : #ifdef _USE_LIBALLOC
; 213  : 	return port_malloc(size);

	mov	ecx, DWORD PTR size$[rsp]
	call	port_malloc

; 214  : #else
; 215  : 	meta_data_t *meta = first_block;
; 216  : 	void* ret = 0;
; 217  : 
; 218  : 	int sz = size;
; 219  : 
; 220  : 	if (size < 24)
; 221  : 		size = 24;
; 222  : 
; 223  : 	size = align24(sz);
; 224  : 
; 225  : 	//SeTextOut("Requested sz -> %d , aligned -> %d \r\n", sz, size);
; 226  : 
; 227  : 	/* now search begins */
; 228  : 	while (meta){
; 229  : 		if (meta->magic == MAGIC_FREE) {
; 230  : 			if (meta->size > size) {
; 231  : 				if (au_split_block(meta, size)){
; 232  : 					meta->magic = MAGIC_USED;
; 233  : 					uint8_t* meta_addr = (uint8_t*)meta;
; 234  : 					ret = ((uint8_t*)meta_addr + sizeof(meta_data_t));
; 235  : 					break;
; 236  : 				}
; 237  : 			}
; 238  : 
; 239  : 			if (meta->size == size) {
; 240  : 				meta->magic = MAGIC_USED;
; 241  : 				uint8_t* addr = (uint8_t*)meta;
; 242  : 				SeTextOut("Accurate memory found returning -> %x \r\n", addr);
; 243  : 				ret = ((uint8_t*)addr + sizeof(meta_data_t));
; 244  : 				break;
; 245  : 			}
; 246  : 		}
; 247  : 
; 248  : 		meta = meta->next;
; 249  : 	}
; 250  : 
; 251  : 	if (ret) {
; 252  : 	//	meta_data_t *meta = (meta_data_t*)(ret - sizeof(meta_data_t));
; 253  : 		return ret;
; 254  : 	}
; 255  : 	else{
; 256  : 		au_expand_kmalloc(size);
; 257  : 
; 258  : 	}
; 259  : 	return kmalloc(size);
; 260  : #endif
; 261  : }

	add	rsp, 40					; 00000028H
	ret	0
kmalloc	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
AuHeapInitialize PROC

; 58   : #ifndef _USE_LIBALLOC
; 59   : 	last_block = NULL;
; 60   : 	first_block = NULL;
; 61   : 	last_mark = 0;
; 62   : 	_debug_on = false;
; 63   : 	void* page = au_request_page(1);
; 64   : 	memset(page, 0, (1 * 4096));
; 65   : 	/* setup the first meta data block */
; 66   : 	uint8_t* desc_addr = (uint8_t*)page;
; 67   : 	meta_data_t *meta = (meta_data_t*)desc_addr;
; 68   : 	meta->next = NULL;
; 69   : 	meta->prev = NULL;
; 70   : 	meta->magic = MAGIC_FREE;
; 71   : 
; 72   : 	/* meta->size holds only the usable area size for user */
; 73   : 	meta->size = (1 * 4096) - sizeof(meta_data_t);
; 74   : 	first_block = meta;
; 75   : 	last_block = meta;
; 76   : 	
; 77   : 	last_mark = ((uint64_t)page + (meta->size + sizeof(meta_data_t)));
; 78   : #endif
; 79   : }

	ret	0
AuHeapInitialize ENDP
_TEXT	ENDS
END
