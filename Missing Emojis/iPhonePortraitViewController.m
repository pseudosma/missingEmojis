//
//  iPhonePortraitViewController.m
//  Missing Emojis
//
//  Created by David Paige on 7/22/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import "iPhonePortraitViewController.h"

@implementation iPhonePortraitViewController
@synthesize subView,copButton, undoButton, trashButton, settingsButton, keyboardButton, mailButton, messageButton, label, slider, pageControl, hiddenTextView, accessoryView, mirroredTextView, settingsVC;
/* The main view controller serves mostly as a backbone for its child view controllers. emojiViewController and stageViewController do the heavy lifting.*/
- (void)viewDidLoad
{
    [copButton addTarget:self action:@selector(copButtonPushed:) forControlEvents:UIControlEventTouchDown];
    [undoButton addTarget:self action:@selector(undoButtonPushed:) forControlEvents:UIControlEventTouchDown];
    [trashButton addTarget:self action:@selector(trashButtonPushed:) forControlEvents:UIControlEventTouchDown];
    [settingsButton addTarget:self action:@selector(settingsButtonPushed:) forControlEvents:UIControlEventTouchDown];
    [keyboardButton addTarget:self action:@selector(keyboardButtonPushed:) forControlEvents:UIControlEventTouchDown];
    [mailButton addTarget:self action:@selector(mailButtonPushed:) forControlEvents:UIControlEventTouchDown];
    [messageButton addTarget:self action:@selector(messageButtonPushed:) forControlEvents:UIControlEventTouchDown];

/*instantiate child view controllers and extra xibs. This must be done now to make sure the customSegue works.*/
    stageVC = [[stageViewControlleriPhone alloc] init];
    emojiVC = [[emojiViewControlleriPhone alloc] init];
    [[NSBundle mainBundle] loadNibNamed:@"settingsViewControlleriPhonePortrait" owner:self options:nil];
    [[NSBundle mainBundle] loadNibNamed:@"accessoryViewiPhonePortrait" owner:self options:nil];
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    [self addChildViewController:emojiVC];
    [self addChildViewController:stageVC];
/* The views are tagged for the transition under the customSegue. */
    self.view.tag = 9997;
    self.subView.tag = 9998;
    [self.subView insertSubview:stageVC.view atIndex:1];
    [self.subView insertSubview:emojiVC.view atIndex:2];
    
    slider.minimumTrackTintColor = [UIColor colorWithHue:.6 saturation:.39 brightness:.90 alpha:1];
    slider.continuous = YES;
    slider.minimumValue = .34;
    slider.maximumValue = 1;
    slider.value = .34;
/* Notifications for events in emojiViewController iPhone. */    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addEmoji) name:@"touchHappened" object:emojiVC];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(quickCopyEmoji) name:@"longTouchHappened" object:emojiVC];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(scrollingDidEnd) name:@"scrollingDidEnd" object:emojiVC];

    hiddenTextView = [[UITextView alloc] init];
    hiddenTextView.editable = YES;
    hiddenTextView.keyboardType = UIKeyboardTypeDefault;
    hiddenTextView.inputAccessoryView = nil;
    [self.view addSubview:hiddenTextView];
/* This notification comes from this view controller. */     
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged) name:@"UITextViewTextDidChangeNotification"object:nil];
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    emojiVC.view = nil;
    stageVC.view = nil;
    imageView = nil;
    image = nil;
    self.view =nil;
    [super viewDidUnload];
}

#pragma mark -
#pragma mark Button Methods
/* The addEmoji and quickCopyEmoji methods aren't from buttons like the rest. They serve as a bridge between the stageViewController and emojiViewController's related methods. The common theme among most of these buttons is that they operate on objects in other view controllers.*/
-(void)addEmoji{
    
    if (stageVC.subLayerCount >= 13) {
        label.text = @"full";
    }else{
        stageVC.arrayIndex = emojiVC.arrayIndex;
        stageVC.sizeScale = slider.value;
        [stageVC addEmoji];
    }
    label.alpha =1;
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.text = nil;
    }
     ];
}

-(void)quickCopyEmoji{
    stageVC.arrayIndex = emojiVC.arrayIndex;
    [stageVC quickCopyEmoji];
    stageVC.sizeScale = slider.value;
    
    label.textColor = [UIColor redColor];
    label.text = @"copy";
    label.alpha = 1;
    
    [UIView animateWithDuration:0.9 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.text = nil;
        label.textColor = [UIColor colorWithHue:.6 saturation:.39 brightness:.90 alpha:1];;
    }
     ];

}

-(void)copButtonPushed:(id)sender{
    
    label.text = @"copy";
    label.alpha = 1;
    
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.text = nil;
    }
     ];
    [stageVC copButton];
}

-(void)undoButtonPushed:(id)sender{
    label.text = @"undo";
    label.alpha = 1;
    
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.text = nil;
    }
     ];
    [stageVC undoButton];
}

-(void)trashButtonPushed:(id)sender{
    label.text = @"trash";
    label.alpha = 1;
    
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.text = nil;
    }
     ];
    [stageVC trashButton];
}

-(void)mailButtonPushed:(id)sender{
/* The mail and message buttons test for device capability before going to the designated method*/
    Class mailTest = NSClassFromString(@"MFMailComposeViewController");
    if (mailTest != nil) {
        if ([mailTest canSendMail]) {
            [self showMailCompose];
        }else{
            label.text = @"unable";
            label.alpha = 1;
            
            [UIView animateWithDuration:0.9 animations:^{
                label.alpha = 0;
            } completion:^(BOOL finished) {
                label.text = nil;
            }];}
    }else{
        label.text = @"unable";
        label.alpha = 1;
        
        [UIView animateWithDuration:0.9 animations:^{
            label.alpha = 0;
        } completion:^(BOOL finished) {
            label.text = nil;
        }];
    }
}

-(void)messageButtonPushed:(id)sender{
    Class messageTest = NSClassFromString(@"MFMessageComposeViewController");
    if (messageTest != nil) {
        if ([messageTest canSendText]) {
            NSURL *smsURL = [NSURL URLWithString:@"sms:"];
            [[UIApplication sharedApplication] openURL:smsURL];
        }else{
            label.text = @"unable";
            label.alpha = 1;
            
            [UIView animateWithDuration:0.9 animations:^{
                label.alpha = 0;
            } completion:^(BOOL finished) {
                label.text = nil;
            }];}
    }else{
        label.text = @"unable";
        label.alpha = 1;
        
        [UIView animateWithDuration:0.9 animations:^{
            label.alpha = 0;
        } completion:^(BOOL finished) {
            label.text = nil;
        }];
    }

}

-(void)keyboardButtonPushed:(id)sender{
        hiddenTextView.inputAccessoryView = accessoryView;
        [hiddenTextView becomeFirstResponder];
}

-(void)settingsButtonPushed:(id)sender{
    
    UIGraphicsBeginImageContextWithOptions(settingsVC.view.frame.size, YES, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [settingsVC.view.layer renderInContext:context];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    imageView.image = image;
    
    imageView.transform = CGAffineTransformMake(.7, -.1, 0, .99,320, 0);
    [self.view addSubview:imageView];
    imageView.tag = 9999;
    imageView.alpha = 0;
    
    customSegue *segue = [[customSegue alloc] initWithIdentifier:@"customSegue" source:self destination:settingsVC]; 
    
    [segue perform];
       
}

#pragma mark -
#pragma mark Mail Methods

-(void)showMailCompose{
    MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc] init];
    mailViewController.mailComposeDelegate = self;
    [self presentViewController:mailViewController animated:YES completion:nil];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -
#pragma mark Accessory View Methods

-(void)textChanged{
/* This method limits the size of text input so that the strings aren't too big to manuver around the stageViewCOntroller's views.*/
    mirroredTextView.textColor = [UIColor whiteColor];
    if (hiddenTextView.text.length > 10) {
        [hiddenTextView deleteBackward];
    }
    mirroredTextView.text = hiddenTextView.text;
}

-(IBAction)doneButtonPushed:(id)sender{
    if (stageVC.subLayerCount >= 13) {
        label.text = @"full";
    }else{
        stageVC.stringOfText = hiddenTextView.text;
        [stageVC addText];
    }
    
    [hiddenTextView resignFirstResponder];
    hiddenTextView.text = nil;
    mirroredTextView.text = nil;
    
    label.alpha =1;
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.text = nil;
    }];
}

-(IBAction)bigTextButtonPushed:(id)sender{
    stageVC.textSize = 24;
}

-(IBAction)mediumTextButtonPushed:(id)sender{
    stageVC.textSize = 20;
}

-(IBAction)smallTextButtonPushed:(id)sender{
    stageVC.textSize = 17;
}

#pragma mark -
#pragma mark Miscellaneous Methods

-(void)scrollingDidEnd{
/* This method gives feedback to the mainview controller's page control object. It's triggered by a notification*/
    pageControl.currentPage = emojiVC.pageNumber;
}

-(IBAction)backButtonPushed:(id)sender{

/* This method is nearly a carbon copy of the [customSegue perform] and settingsButtonPushed methods. It functions like a unwind for the segue.*/
    UIGraphicsBeginImageContextWithOptions(settingsVC.view.frame.size, YES, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [settingsVC.view.layer renderInContext:context];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    imageView.image = image;
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
    [UIView animateWithDuration:1 animations:^{
        [self.view viewWithTag:9998].transform = CGAffineTransformMake(1, 0, 0, 1, 0, 0);
        [self.view viewWithTag:9998].alpha = 1;
        [self.view viewWithTag:9999].alpha = 0;
        [self.view viewWithTag:9999].transform = CGAffineTransformMake(.7, -.1, 0, .99, 320, 0);
    }];
}

@end
