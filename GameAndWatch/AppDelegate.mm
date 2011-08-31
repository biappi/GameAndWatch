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

@property(nonatomic, assign) GW_Platform_OSX * platform;
@property(nonatomic, assign) GW_Game         * game;
@property(nonatomic, assign) GW_Device       * device;

@end

@implementation AppDelegate

@synthesize window;
@synthesize imageView;
@synthesize leftButton;
@synthesize gameAButton;
@synthesize gameBButton;
@synthesize timerButton;
@synthesize rightButton;
@synthesize platform;
@synthesize game;
@synthesize device;

- (void)dealloc;
{
  self.window = nil;
  self.imageView = nil;
  [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification;
{
  self.leftButton.tag  = GPK_LEFT;
  self.rightButton.tag = GPK_RIGHT;
  self.gameAButton.tag = GPK_GAMEA;
  self.gameBButton.tag = GPK_GAMEB;
  self.timerButton.tag = GPK_TIME;
  
  self.platform = new GW_Platform_OSX;    
  self.platform->initialize();
  
  GW_GameList gamelist(self.platform);  
  self.game=gamelist.get(0)->create();
  self.game->TurnOn();
  
  self.device = new GW_Device(self.platform);
  self.device->PrepareToRun(self.game);
  self.device->RunStep(NULL);
  
  self.imageView.image = (CGImageRef)self.platform->get_screen_image();
  [self.imageView setNeedsDisplay:YES];
}

- (IBAction)buttonDown:(NSView *)sender;
{
  GW_Platform_Event e;
  e.id   = GPE_KEYDOWN;
  e.data = (int)sender.tag;
  
  self.device->RunStep(&e);
  self.imageView.image = (CGImageRef)self.platform->get_screen_image();
  [self.imageView setNeedsDisplay:YES];  
}

@end
