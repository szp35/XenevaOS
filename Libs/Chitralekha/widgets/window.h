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

#ifndef __CH_WINDOW_H__
#define __CH_WINDOW_H__

#include <stdint.h>
#include "..\chitralekha.h"
#include "..\color.h"
#include "..\draw.h"
#include "base.h"
#include "list.h"

#define CHITRALEKHA_DEFAULT_WIN_WIDTH  400
#define CHITRALEKHA_DEFAULT_WIN_HEIGHT 300
#define CHITRALEKHA_WINDOW_DEFAULT_PAD_Y 26
#define CHITRALEKHA_WINDOW_DEFAULT_PAD_X 1

#define WINDOW_GLOBAL_CONTROL_CLOSE 1
#define WINDOW_GLOBAL_CONTROL_MAXIMIZE 2
#define WINDOW_GLOBAL_CONTROL_MINIMIZE 3
#define WINDOW_GLOBAL_CONTROL_CUSTOM 4

#define WINDOW_FLAG_MOVABLE (1<<0)
#define WINDOW_FLAG_STATIC  (1<<1)
#define WINDOW_FLAG_ALWAYS_ON_TOP  (1<<2)
#define WINDOW_FLAG_NON_RESIZABLE  (1<<3)
#define WINDOW_FLAG_BROADCAST_LISTENER (1<<4)
#define WINDOW_FLAG_ANIMATED (1<<5)

#pragma pack(push,1)
typedef struct _ChSharedWin_ {
	ChRect rect[256];
	uint32_t rect_count;
	bool dirty;
	bool updateEntireWindow;
	int x;
	int y;
	uint32_t width;
	uint32_t height;
	bool alpha;
	bool hide;
	double alphaValue;
}ChSharedWinInfo;
#pragma pack(pop)

typedef struct _chwin_ {
	uint8_t flags;
	uint32_t *buffer;
	void* sharedwin;
	ChCanvas* canv;
	char* title;
	ChSharedWinInfo* info;
	ChitralekhaApp* app;
	uint32_t handle;
	uint32_t color;
	list_t* GlobalControls;
	list_t* widgets;
	void(*ChWinPaint)(_chwin_ *win);
}ChWindow;

typedef struct _ChWidget_{
	int x;
	int y;
	int w;
	int h;
	int lastMouseX;
	int lastMouseY;
	bool clicked;
	bool hover;
	bool hoverPainted;
	bool KillFocus;
	void(*ChActionHandler)(_ChWidget_ *widget, ChWindow* win);
	void(*ChMouseEvent)(_ChWidget_* widget, ChWindow* win, int x, int y, int button);
	void(*ChPaintHandler)(_ChWidget_* widget, ChWindow* win);
	void(*ChDestroy)(_ChWidget_* widget, ChWindow* win);
}ChWidget;

typedef struct _global_ctrl_ {
	int x;
	int y;
	int w;
	int h;
	uint8_t type;
	bool hover;
	bool clicked;
	uint32_t fillColor;
	uint32_t outlineColor;
	uint32_t hoverOutlineColor;
	uint32_t clickedFillColor;
	uint32_t clickedOutlineColor;
	void(*ChGlobalButtonPaint)(ChWindow* win, _global_ctrl_* glbl);
	void(*ChGlobalMouseEvent) (ChWindow* win, _global_ctrl_* glbl, int x, int y, int button);
}ChWinGlobalControl;


/*
* ChCreateWindow -- create a new chitralekha window
* @param app -- pointer to Chitralekha app
* @param attrib -- window attributes
* @param title -- title of the window
* @param x -- x position of the window
* @param y -- y position of the window
* @param w -- width of the window
* @param h -- height of the window
*/
XE_EXTERN XE_EXPORT ChWindow* ChCreateWindow(ChitralekhaApp *app, uint8_t attrib, char* title, int x, int y, int w, int h);

/*
* ChWindowBroadcastIcon -- broadcast icon information to
* broadcast listener
* @param app -- pointer to chitralekha application
* @param iconfile -- path of the icon file, supported formats
* are : 32bit- bmp file
*/
XE_EXTERN XE_EXPORT void ChWindowBroadcastIcon(ChitralekhaApp* app, char* iconfile);

/*
* ChWindowPaint -- paint the entire window
* @param win -- Pointer to window
*/
XE_EXTERN XE_EXPORT void ChWindowPaint(ChWindow* win);

/*
* ChWindowUpdate -- update a portion or whole window
* @param win -- Pointer to window
* @param x -- x position of the dirty area
* @param y -- y position of the dirty area
* @param w - width of the dirty area
* @param h -- height of the dirty area
* @param updateEntireWin -- update entire window
* @param dirty -- dirty specifies small areas of the window
*/
XE_EXTERN XE_EXPORT void ChWindowUpdate(ChWindow* win, int x, int y, int w, int h,bool updateEntireWin, bool dirty);


/*
* ChWindowHide -- hide the window
* basically it sends command to deodhai
* @param win -- Pointer to window structure
*/
XE_EXTERN XE_EXPORT void ChWindowHide(ChWindow* win);

/*
* ChGetWindowHandle -- get a specific window handle from
* the system looking by its name
* @param app -- Pointer to application instance
* @param title -- desired window title
*/
XE_EXTERN XE_EXPORT uint32_t ChGetWindowHandle(ChitralekhaApp* app, char* title);
/*
* ChWindowHandleMouse -- handle mouse event
* @param win -- Pointer to window
* @param x -- X coord of the mouse
* @param y -- Y coord of the mouse
* @param button -- button state of the mouse
*/
XE_EXTERN XE_EXPORT void ChWindowHandleMouse(ChWindow* win, int x, int y, int button);


/*
* ChWindowAddWidget -- adds a widget to window
* @param win -- Pointer to root window
* @param wid -- Pointer to widget needs to be added
*/
XE_EXTERN XE_EXPORT void ChWindowAddWidget(ChWindow* win, ChWidget* wid);

#endif