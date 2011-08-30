//
//  platform_osx.h
//  GameAndWatch
//
//  Created by Antonio Malara on 8/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "include/platform.h"

class GW_Platform_OSX : public GW_Platform
{
public:
    virtual void initialize();
    virtual void finalize();
    
    virtual int width_get();
    virtual int height_get();
    
    virtual unsigned int ticks_get();
    virtual unsigned int time_ms_get();
    virtual GW_Platform_Time time_get();
    
    virtual bool event(GW_Platform_GameType gametype, GW_Platform_Event *event);
    
    virtual void draw_clear();
    virtual void draw_image(GW_Platform_Image *image, int x, int y);
    virtual void draw_line(int x1, int y1, int x2, int y2, GW_Platform_RGB *color = NULL);
    virtual void draw_rectangle(int x1, int y1, int x2, int y2, GW_Platform_RGB *forecolor = NULL, GW_Platform_RGB *backcolor = NULL, int alpha = -1);
    virtual void draw_flip(int output_width = 0, int output_height = 0);
    
    virtual void text_draw(int x, int y, const string &text, GW_Platform_RGB *color = NULL);
    virtual int text_fontheight();
    virtual int text_width(const string &text);
    virtual int text_height(const string &text);
    
    virtual void sound_play(GW_Platform_Sound *sound);
    virtual unsigned short sound_volume(unsigned short volume);
    virtual void sound_stop_all();
    
    virtual GW_Platform_Image *image_load(const string &filename, GW_Platform_RGB *tcolor = NULL);
    virtual GW_Platform_Sound *sound_load(const string &filename);
};