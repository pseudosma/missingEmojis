//
//  customSegue.m
//  Missing
//
//  Created by David Paige on 1/15/13.
//  Copyright (c) 2013 AppBastard. All rights reserved.
//

#import "customSegue.h"

@implementation customSegue

/* This segue uses a UIImage taken from settingsViewControlleriPhonePortrait's layer hierarchy. The image is placed in the main view controller's hierarchy offset from the initial start point by a value of x = 320. The transition slides from right to left while simultaneously skewing the main view controller's self.view.subview and its self.view.imageView subviews. The whole effect is meant to look like a milk carton rotating. The "real" segue has no animation so this is essentially an animation before the actual segue happens. Also, because the segue is done in this fashion, the settingsViewController isn't included in the main storyboard; the segue needs to capture an image of the view controller and it can't do that if it hasn't been instantiated yet. The settingsViewContoller is instantiated with the main view controller.*/ 

-(void)perform{
/* The if/then changes the value of key animation variables depending on the device type.*/
    float value;
    uint tag1;
    uint tag2;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        value = -768;
        tag1 = 9002;
        tag2 = 9003;
    }else{
        value = -320;
        tag1 = 9998;
        tag2 = 9999;
    }
    
    UIViewController *source = (UIViewController *)self.sourceViewController;
       [UIView animateWithDuration:1 animations:^{
        [source.view viewWithTag:tag1].transform = CGAffineTransformMake(.7, .1, 0, .99, value, 0);
           [source.view viewWithTag:tag1].alpha = 0;
           [source.view viewWithTag:tag2].alpha = 1;
        [source.view viewWithTag:tag2].transform = CGAffineTransformMake(1, 0, 0, 1, 0, 0);
        
    } completion:^(BOOL finished){
        [self.sourceViewController presentModalViewController:self.destinationViewController animated:NO];
    }];
}
@end
