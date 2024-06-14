/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2024, Manas Kamal Choudhury
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
**/

#ifndef __STACK_H__
#define __STACK_H__

#include <stdint.h>
#include <aurora.h>

typedef struct _stack_item_ {
	void* data;
	struct _stack_item_ *link;
}AuStackItem;

typedef struct _stack_{
	AuStackItem* top;
	int itemCount;
}AuStack;


/*
* AuStackCreate -- create a new stack
*/
AU_EXTERN AU_EXPORT AuStack* AuStackCreate();

/*
* AuStackPush -- push a new item to the stack
* @param stack -- pointer to the stack where to push
* @param data -- data to be pushed
*/
AU_EXTERN AU_EXPORT void AuStackPush(AuStack *stack, void *data);

/*
* AuStackPop -- pop a new item from the stack
* @param stack -- pointer to the stack from where to pop
*/
AU_EXTERN AU_EXPORT void* AuStackPop(AuStack* stack);

#endif