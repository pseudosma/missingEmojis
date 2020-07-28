//
//  stageViewControlleriPad.h
//  Missing
//
//  Created by David Paige on 9/6/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@interface stageViewControlleriPad : UIViewController{
    
    
    CGRect dimensions;
    UIPinchGestureRecognizer *pinch;
    uint sizer;
    UIView *borderView;
    UIView *sub;
    
    NSArray *stringArray;
    UIPasteboard *pasteBoard;
       
    UIColor *color;
    BOOL alphaToZero;
}

-(void)copButton;
-(void)undoButton;
-(void)trashButton;
-(void)addEmoji;
-(void)addText;
-(void)quickCopyEmoji;

@property NSUInteger subLayerCount;
@property NSUInteger arrayIndex;
@property float sizeScale;
@property NSUInteger textSize;
@property (strong , nonatomic) NSString *stringOfText;

@end

