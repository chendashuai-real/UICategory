//
//  UIImageView+Category.h
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UICategoryProtocl.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Category)<UICategoryProtocl>

+ (UIImageView * (^)(NSString *imageName))uicImageName;
- (UIImageView * (^)(UIImage *image))uicImage;
- (UIImageView * (^)(UIImage *highlightedImage))uicHighlightedImage;
- (UIImageView * (^)(UIImage *image, UIImage *highlightedImage))uicImageAndHighlightedImage;
- (UIImageView * (^)(BOOL enabled))uicUserInteractionEnabled;
- (UIImageView * (^)(BOOL highlighted))uicHighlighted;
- (UIImageView * (^)(NSArray<UIImage *> *animationImages))uicAnimationImages;
- (UIImageView * (^)(NSArray<UIImage *> *highlightedAnimationImages))uicHighlightedAnimationImages;
- (UIImageView * (^)(NSInteger tag))uicTag;
- (UIImageView * (^)(UIViewContentMode contentMode))uicContentMode;
- (UIImageView * (^)(NSTimeInterval animationDuration))uicAnimationDuration;
- (UIImageView * (^)(NSInteger animationRepeatCount))uicAnimationRepeatCount;
- (UIImageView * (^)(UIColor *tintColor))uicTintColor;

- (UIImageView * (^)(void))uicStartAnimating;
- (UIImageView * (^)(void))uicStopAnimating;

- (BOOL (^)(void))uicIsAnimating;

- (UIImageView * (^)(UIColor *bgColor))uicBackgroundColor;
- (UIImageView * (^)(CGFloat cornerRadius))uicCornerRadius;
- (UIImageView * (^)(UIColor *borderColor))uicBorderColor;
- (UIImageView * (^)(CGFloat borderWidth))uicBorderWidth;


@end

NS_ASSUME_NONNULL_END
