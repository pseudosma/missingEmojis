//
//  iPadPortraitViewController.h
//  Missing Emojis
//
//  Created by David Paige on 7/22/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.

/* There are no comments in the iPad version of this software because these files are nearly identical to their iPhone counterparts ( which do have comments). The only diferences, other than the storyboard, xib files, and button artwork, are the maximum stage size, text size, and spacing on emojiViewControlleriPad.*/

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "stageViewControlleriPad.h"
#import "emojiViewControlleriPad.h"
#import "settingsViewControlleriPadPortrait.h"
#import "customSegue.h"

@interface iPadPortraitViewController : UIViewController <MFMailComposeViewControllerDelegate>{
    
    stageViewControlleriPad *stageVC;
    emojiViewControlleriPad *emojiVC;

    UITextView *hiddenTextView;
    UIImage *image;
    UIImageView *imageView;
    
}
@property (strong, nonatomic) IBOutlet UIView *subView;
@property (strong, nonatomic) IBOutlet UIButton *copButton;
@property (strong, nonatomic) IBOutlet UIButton *undoButton;
@property (strong, nonatomic) IBOutlet UIButton *trashButton;
@property (strong, nonatomic) IBOutlet UIButton *settingsButton;
@property (strong, nonatomic) IBOutlet UIButton *keyboardButton;
@property (strong, nonatomic) IBOutlet UIButton *mailButton;
@property (strong, nonatomic) IBOutlet UIButton *messageButton;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic) IBOutlet UITextView *hiddenTextView;
@property (strong, nonatomic) IBOutlet UIView *accessoryView;
@property (strong, nonatomic) IBOutlet UITextView *mirroredTextView;
@property (strong, nonatomic) IBOutlet UIViewController *_settingsVC;
-(IBAction)backButtonPushed:(id)sender;
-(void)showMailCompose;
-(IBAction)doneButtonPushed:(id)sender;
-(IBAction)bigTextButtonPushed:(id)sender;
-(IBAction)mediumTextButtonPushed:(id)sender;
-(IBAction)smallTextButtonPushed:(id)sender;

@end
