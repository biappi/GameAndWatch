//
//  AppDelegate.m
//  GameAndWatch
//
//  Created by Antonio Malara on 8/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "gamelist.h"
#import "device.h"
#import "platform_osx.h"

@implementation AppDelegate

@synthesize window;

- (void)dealloc;
{
    self.window = nil;
    [super dealloc];
}
	
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification;
{
    GW_Platform_OSX platform;//(640, 480);
    
    platform.initialize();
    
    GW_GameList gamelist(&platform);
    
    GW_Game *game=gamelist.get(0)->create();
    GW_Device device(&platform);
    
    device.Run(game);
    delete game;
    
    platform.finalize();
}

@end
