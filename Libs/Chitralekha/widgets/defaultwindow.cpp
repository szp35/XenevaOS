/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2023, Manas Kamal Choudhury
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

#include "..\color.h"
#include "..\draw.h"
#include "window.h"
#include "..\font.h"

#define DEFAULT_TITLEBAR_DARK  0xFF252525
#define DEFAULT_TITLEBAR_LIGHT 0xFF454343


void ChWindowPaintTitlebar(ChWindow* win) {
	ChColorDrawVerticalGradient(win->canv, 0, 0, win->info->width, 26, DEFAULT_TITLEBAR_LIGHT, DEFAULT_TITLEBAR_DARK);
	ChFont* font = win->app->baseFont;
	ChFontSetSize(win->app->baseFont, 10);
	int font_width = ChFontGetWidth(font,win->title);
	int font_height = ChFontGetHeight(font,win->title);
	ChFontDrawText(win->canv,font, win->title, win->info->width / 2 - font_width / 2, 26 / 2 + 4, 16, WHITE);
	ChDrawRectUnfilled(win->canv, 0, 0, win->info->width, 26,	LIGHTBLACK);
}

void ChDefaultWinPaint(ChWindow* win){
	ChDrawRect(win->canv, 0, 0, win->info->width, win->info->height,win->color);
	ChWindowPaintTitlebar(win);
	ChWindowUpdate(win, 0, 0, win->info->width, win->info->height, 1);
}