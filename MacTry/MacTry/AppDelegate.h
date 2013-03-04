//
//  AppDelegate.h
//  MacTry
//
//  Created by Chen Lei on 13-3-1.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface myobject : NSObject{
    double number;
}

@property (nonatomic, assign)  double number;

@end


@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSObjectController *controller;
    myobject *mobj;
    double length;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) myobject *mobj;
@property (nonatomic, retain) IBOutlet NSObjectController *controller;

@end
