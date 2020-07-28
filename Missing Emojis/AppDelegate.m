//
//  AppDelegate.m
//  Missing Emojis
//
//  Created by David Paige on 7/21/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    appPasteboard1 = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard1" create:YES];
    appPasteboard1.persistent = YES;
    appPasteboard2 = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard2" create:YES];
    appPasteboard2.persistent = YES;
    appPasteboard3 = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard3" create:YES];
    appPasteboard3.persistent = YES;

    _window.backgroundColor = [UIColor whiteColor];
    return YES;
}
@end
