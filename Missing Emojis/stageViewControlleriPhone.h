//
//  stageViewControlleriPhone.h
//  Missing
//
//  Created by David Paige on 9/6/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@interface stageViewControlleriPhone : UIViewController{
    
/*The following variables are used to change the stage size*/
    CGRect dimensions;
    UIPinchGestureRecognizer *pinch;
    uint sizer;
    UIView *borderView;
    UIView *sub;
/*this array is used to pull images from to add to the stage.*/
    NSArray *stringArray;
    UIPasteboard *pasteBoard;
/* variables for stage color change*/    
    UIColor *color;
    BOOL alphaToZero;
}

-(void)copButton;
-(void)undoButton;
-(void)trashButton;
-(void)addEmoji;
-(void)addText;
-(void)quickCopyEmoji;

/*The subLayerCount variable acts as a counter to keep track of new views added (emojis), giving them an individual tag and also keep track of them being deleted in the loop of the trashButton method.*/
@property NSUInteger subLayerCount;
/*arrayIndex is used to grab the equivalent image from the stageViewController's array compared to the emojiViewController's array.*/
@property NSUInteger arrayIndex;
/* sizeScale is a variable for adjusting the emoji size per the slider's value*/
@property float sizeScale;
/* textSize */
@property NSUInteger textSize;
/* stringOfText is the actual string passed from hiddenTextView in the main view controller to stageViewController's UILabel*/
@property (strong , nonatomic) NSString *stringOfText;

@end

