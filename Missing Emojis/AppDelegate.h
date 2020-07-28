//
//  AppDelegate.h
//  Missing Emojis
//
//  Created by David Paige on 7/21/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AppDelegate : UIResponder <UIApplicationDelegate>{
/* These three pasteboards keep persistant data for settingsViewContoller's actionSheet:clickedButtonAtIndex: method*/ 
    UIPasteboard *appPasteboard1;
    UIPasteboard *appPasteboard2;
    UIPasteboard *appPasteboard3;
}


@property (strong, nonatomic) UIWindow *window;

@end
