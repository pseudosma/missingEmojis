//
//  settingsViewControllerPortrait.h
//  Missing
//
//  Created by David Paige on 1/17/13.
//  Copyright (c) 2013 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface settingsViewControlleriPhonePortrait : UIViewController <UIActionSheetDelegate>{
/* Action sheets to respond to users clicking on the xib's UIImageViews*/
    UIActionSheet *actionSheet1;
    UIActionSheet *actionSheet2;
    UIActionSheet *actionSheet3;
}
@property (strong , nonatomic) IBOutlet UISlider *r;
@property (strong , nonatomic) IBOutlet UISlider *g;
@property (strong , nonatomic) IBOutlet UISlider *b;
@property (strong , nonatomic) IBOutlet UISwitch *toggle;
@property (strong , nonatomic) IBOutlet UIImageView *imageView1;
@property (strong , nonatomic) IBOutlet UIImageView *imageView2;
@property (strong , nonatomic) IBOutlet UIImageView *imageView3;

-(IBAction)backButtonPushed:(id)sender;

@end
