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

#include "scrollpane.h"
#include "view.h"
#include "..\draw.h"
#include "..\color.h"

/*
* ChDefaultListViewPainter -- default list view painter
*/
void ChDefaultListViewPainter(ChWidget* wid, ChWindow* win) {
	ChListView *lv = (ChListView*)wid;
	ChDrawRect(win->canv, lv->wid.x, lv->wid.y, lv->wid.w, lv->wid.h, WHITE);
	ChRect viewRect;
	viewRect.x = lv->wid.x;
	viewRect.y = lv->wid.y;
	viewRect.w = lv->wid.w;
	viewRect.h = lv->wid.h;
	ChFontSetSize(win->app->baseFont, 14);
	for (int i = 0; i < lv->itemList->pointer; i++) {
		ChListItem* li = (ChListItem*)list_get_at(lv->itemList, i);
		//ChDrawRect(win->canv, lv->wid.x + li->xPos, lv->wid.y + li->yPos, li->width, li->height, BLUE);
		ChFontDrawTextClipped(win->canv, win->app->baseFont, li->itemText, lv->wid.x + li->xPos,
			lv->wid.y + li->yPos + (li->height/2), BLACK, &viewRect);
	}
}