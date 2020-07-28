//
//  emojiViewControlleriPhone.h
//  Missing
//
//  Created by David Paige on 9/6/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface emojiViewControlleriPhone : UIViewController <UIScrollViewDelegate> {
    CGRect dimensions;
    UIScrollView *scrollViewA;
    NSArray *imageArray;
    NSUInteger arrayCount;
    NSUInteger secondArrayCount;
    NSUInteger thirdArrayCount;
    NSUInteger xSpacing;
    
}
/* arrayIndex is a conuter to keep track of the layers of UIImageViews created by stageViewController's imageArray*/
@property NSUInteger arrayIndex;
/* pageNumber keeps track of scrollViewA's position and passes it to the main view controller's UIPageControl.*/
@property NSUInteger pageNumber;
@end
