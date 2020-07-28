//
//  settingsViewControllerPortrait.m
//  Missing
//
//  Created by David Paige on 1/17/13.
//  Copyright (c) 2013 AppBastard. All rights reserved.
//

#import "settingsViewControlleriPhonePortrait.h"

@implementation settingsViewControlleriPhonePortrait
@synthesize r, g, b, toggle, imageView1, imageView2, imageView3;


- (void)viewDidLoad
{
    r.minimumTrackTintColor = [UIColor redColor];
    r.value = 1;
    g.minimumTrackTintColor = [UIColor greenColor];
    g.value =1;
    b.minimumTrackTintColor = [UIColor blueColor];
    b.value = 1;
    
    UITapGestureRecognizer *imageView1Tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageView1Tapped)];
    [imageView1 addGestureRecognizer:imageView1Tap];
    
    UITapGestureRecognizer *imageView2Tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageView2Tapped)];
    [imageView2 addGestureRecognizer:imageView2Tap];
    
    UITapGestureRecognizer *imageView3Tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageView3Tapped)];
    [imageView3 addGestureRecognizer:imageView3Tap];
    
    imageView1.image = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard1" create:NO].image;
    imageView2.image = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard2" create:NO].image;
    imageView3.image = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard3" create:NO].image;
    if (imageView1.image != nil) {
        imageView1.backgroundColor = [UIColor clearColor];
    }
    if (imageView2.image != nil) {
        imageView2.backgroundColor = [UIColor clearColor];
    }
    if (imageView3.image != nil) {
        imageView3.backgroundColor = [UIColor clearColor];
    }

    toggle.onTintColor = [UIColor colorWithHue:.5988 saturation:.39 brightness:.95 alpha:1];
    
    [super viewDidLoad];
}

-(IBAction)backButtonPushed:(id)sender{
/* The values here are passed on a dictionary with an NSNotification to stageViewController to alter the stage color*/    
    NSNumber *rValue = [NSNumber numberWithFloat:(r.value)];
    NSNumber *gValue = [NSNumber numberWithFloat:(g.value)];
    NSNumber *bValue = [NSNumber numberWithFloat:(b.value)];
    NSNumber *alphaToZero = [NSNumber numberWithBool:toggle.isOn];

    NSDictionary *settingsDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:rValue,@"1",gValue,@"2",bValue,@"3",alphaToZero,@"4", nil];                  
                      
    [[NSNotificationCenter defaultCenter] postNotificationName:@"backButtonPushed" object:self userInfo:settingsDictionary];    
}

-(void)imageView1Tapped{
    actionSheet1 = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"Save Current Stage",@"Copy To Clipboard",@"Cancel", nil];
    actionSheet1.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    actionSheet1.destructiveButtonIndex = 2;
    [actionSheet1 showInView:self.view];
}

/* The other methods here are for the xib's UIImageViews. When tapped, an action sheet is presented that allows the user to save an image of the current stage to one of the persistant clipboards. The user can also copy the saved image to the general pasteboard.*/ 

-(void)imageView2Tapped{
    actionSheet2 = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"Save Current Stage",@"Copy To Clipboard",@"Cancel", nil];
    actionSheet2.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    actionSheet2.destructiveButtonIndex = 2;
    [actionSheet2 showInView:self.view];
}

-(void)imageView3Tapped{
    actionSheet3 = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"Save Current Stage",@"Copy To Clipboard",@"Cancel", nil];
    actionSheet3.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    actionSheet3.destructiveButtonIndex = 2;
    [actionSheet3 showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (actionSheet == actionSheet1) {
        if (buttonIndex == 0) {
            NSString *string = @"com.appbastard.missing.pboard1";
            NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:string,@"1", nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"saveStage" object:self userInfo:dictionary];
        }
        if (buttonIndex == 1) {
            UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            NSData *imgData = UIImagePNGRepresentation(imageView1.image);
            [pasteboard setData:imgData forPasteboardType:[UIPasteboardTypeListImage objectAtIndex:0]];
            //pasteboard.image = imageView1.image;
            //depricated in iOS6
        }
    }
    if (actionSheet == actionSheet2) {
        if (buttonIndex == 0) {
            NSString *string = @"com.appbastard.missing.pboard2";
            NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:string,@"1", nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"saveStage" object:self userInfo:dictionary];
        }
        if (buttonIndex == 1) {
            UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            NSData *imgData = UIImagePNGRepresentation(imageView2.image);
            [pasteboard setData:imgData forPasteboardType:[UIPasteboardTypeListImage objectAtIndex:0]];
            //pasteboard.image = imageView2.image;
            //depricated in iOS6
        }
    }
    if (actionSheet == actionSheet3) {
        if (buttonIndex == 0) {
            NSString *string = @"com.appbastard.missing.pboard3";
            NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:string,@"1", nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"saveStage" object:self userInfo:dictionary];
        }
        if (buttonIndex == 1) {
            UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            NSData *imgData = UIImagePNGRepresentation(imageView3.image);
            [pasteboard setData:imgData forPasteboardType:[UIPasteboardTypeListImage objectAtIndex:0]];
            //pasteboard.image = imageView3.image;
            //depricated in iOS6
            }
        }
 }

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
        imageView1.image = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard1" create:NO].image;
        imageView2.image = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard2" create:NO].image;
        imageView3.image = [UIPasteboard pasteboardWithName:@"com.appbastard.missing.pboard3" create:NO].image;
    if (imageView1.image != nil) {
        imageView1.backgroundColor = [UIColor clearColor];
    }
    if (imageView2.image != nil) {
        imageView2.backgroundColor = [UIColor clearColor];
    }
    if (imageView3.image != nil) {
        imageView3.backgroundColor = [UIColor clearColor];
    }
}

- (void)viewDidUnload{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super viewDidUnload];    
}


@end
