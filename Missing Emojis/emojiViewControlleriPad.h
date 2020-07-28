//
//  emojiViewControlleriPad.h
//  Missing
//
//  Created by David Paige on 9/6/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <UIKit/UIKit.h>


@interface emojiViewControlleriPad : UIViewController <UIScrollViewDelegate> {
    CGRect dimensions;
    UIScrollView *scrollViewA;
    NSArray *imageArray;
    NSUInteger arrayCount;
    NSUInteger secondArrayCount;
    NSUInteger thirdArrayCount;
    NSUInteger xSpacing;
    
}
@property NSUInteger arrayIndex;
@property NSUInteger pageNumber;
@end
