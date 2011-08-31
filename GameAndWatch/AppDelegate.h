//
//  AppDelegate.h
//  GameAndWatch
//
//  Created by Antonio Malara on 8/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ImageView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong) IBOutlet NSWindow  * window;
@property (assign) IBOutlet ImageView * imageView;

@property (assign) IBOutlet NSButton *leftButton;
@property (assign) IBOutlet NSButton *gameAButton;
@property (assign) IBOutlet NSButton *gameBButton;
@property (assign) IBOutlet NSButton *timerButton;
@property (assign) IBOutlet NSButton *rightButton;

- (IBAction)buttonDown:(NSView *)sender;

@end
