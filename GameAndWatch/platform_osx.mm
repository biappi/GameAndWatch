//
//  platform_osx.m
//  GameAndWatch
//
//  Created by Antonio Malara on 8/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "platform_osx.h"

void GW_Platform_OSX::initialize()
{
}

void GW_Platform_OSX::finalize()
{
}

int GW_Platform_OSX::width_get()
{
    return 0;
}

int GW_Platform_OSX::height_get()
{
    return 0;
}

unsigned int GW_Platform_OSX::ticks_get()
{
    return 0;
}

unsigned int GW_Platform_OSX::time_ms_get()
{
    return 0;
}

GW_Platform_Time GW_Platform_OSX::time_get()
{
    GW_Platform_Time x;
    return x;
}

bool GW_Platform_OSX::event(GW_Platform_GameType gametype, GW_Platform_Event *event)
{
    return false;
}

void GW_Platform_OSX::draw_clear()
{
}

void GW_Platform_OSX::draw_image(GW_Platform_Image *image, int x, int y)
{
}

void GW_Platform_OSX::draw_line(int x1, int y1, int x2, int y2, GW_Platform_RGB * color)
{
}

void GW_Platform_OSX::draw_rectangle(int x1, int y1, int x2, int y2, GW_Platform_RGB * forecolor, GW_Platform_RGB * backcolor, int alpha)
{
}

void GW_Platform_OSX::draw_flip(int output_width, int output_height)
{
}

void GW_Platform_OSX::text_draw(int x, int y, const string &text, GW_Platform_RGB *color)
{
}

int GW_Platform_OSX::text_fontheight()
{
    return 1;
}

int GW_Platform_OSX::text_width(const string &text)
{
    return 0;
}

int GW_Platform_OSX::text_height(const string &text)
{
    return 0;
}

void GW_Platform_OSX::sound_play(GW_Platform_Sound *sound)
{
}

unsigned short GW_Platform_OSX::sound_volume(unsigned short volume)
{
    return 0;
}

void GW_Platform_OSX::sound_stop_all()
{
}

GW_Platform_Image * GW_Platform_OSX::image_load(const string &filename, GW_Platform_RGB * tcolor)
{
    return NULL;
}

GW_Platform_Sound * GW_Platform_OSX::sound_load(const string &filename)
{
    return NULL;
}
