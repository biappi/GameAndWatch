//
//  ImageView.m
//  GameAndWatch
//
//  Created by Antonio Malara on 31/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ImageView.h"

@implementation ImageView

@synthesize image;

- (void)drawRect:(NSRect)dirtyRect
{
  CGContextRef c = [[NSGraphicsContext currentContext] graphicsPort];
  CGContextDrawImage(c, CGRectMake(0, 0, CGImageGetWidth(self.image), CGImageGetHeight(self.image)), self.image);
}

@end
