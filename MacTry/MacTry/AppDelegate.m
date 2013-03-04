//
//  AppDelegate.m
//  MacTry
//
//  Created by Chen Lei on 13-3-1.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "AppDelegate.h"


@implementation myobject

@synthesize number;

@end

@implementation AppDelegate

@synthesize mobj, controller;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    mobj = [[myobject alloc] init];
    
    [self addObserver:self forKeyPath:@"length" options:NSKeyValueObservingOptionNew context:NULL];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(log) userInfo:nil repeats:YES];
}

- (void)log{
    NSLog(@"%f--- %f", mobj.number, length);
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    NSLog(@"%@", change);
}

@end
