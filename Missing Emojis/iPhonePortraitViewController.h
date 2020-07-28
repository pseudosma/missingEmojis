//
//  iPhonePortraitViewController.h
//  Missing Emojis
//
//  Created by David Paige on 7/22/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <MessageUI/MessageUI.h>
#import "stageViewControlleriPhone.h"
#import "emojiViewControlleriPhone.h"
#import "settingsViewControlleriPhonePortrait.h"
#import "customSegue.h"

@interface iPhonePortraitViewController : UIViewController <MFMailComposeViewControllerDelegate>{

    stageViewControlleriPhone *stageVC;
    emojiViewControlleriPhone *emojiVC;
/* The hidden text view is needed here so that something created during the viewDidLoad method can become the first responder to expose the keyboard.*/
    UITextView *hiddenTextView;
/* variables for transition to the settingsViewController*/   
    UIImage *image;
    UIImageView *imageView;
    
}
/* storyboard items */
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
/* These properties are attached to the accessoryViewiPhonePortrait.nib*/
@property (strong, nonatomic) IBOutlet UIView *accessoryView;
@property (strong, nonatomic) IBOutlet UITextView *mirroredTextView;
/* settings view controller stuff*/
@property (strong, nonatomic) IBOutlet UIViewController *settingsVC;
-(IBAction)backButtonPushed:(id)sender;
/* Prototyped methods for mail*/
-(void)showMailCompose;
/* Actions for the accessoryViewController*/
-(IBAction)doneButtonPushed:(id)sender;
-(IBAction)bigTextButtonPushed:(id)sender;
-(IBAction)mediumTextButtonPushed:(id)sender;
-(IBAction)smallTextButtonPushed:(id)sender;

@end
