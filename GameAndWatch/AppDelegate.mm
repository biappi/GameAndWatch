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

@interface AppDelegate ()
@property(nonatomic, assign) GW_Game * game;
@end

@implementation AppDelegate

@synthesize window;
@synthesize imageView;
@synthesize game;

- (void)dealloc;
{
  self.window = nil;
  self.imageView = nil;
  [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification;
{
  GW_Platform_OSX platform;    
  platform.initialize();
  
  GW_GameList gamelist(&platform);
  
  self.game=gamelist.get(0)->create();
  
  self.game->TurnOn();
  
  GW_Device device(&platform);
  device.Run(game);
  
  self.imageView.image = (CGImageRef)platform.get_screen_image();
  [self.imageView setNeedsDisplay:YES];
  
  platform.finalize();
}

@end
