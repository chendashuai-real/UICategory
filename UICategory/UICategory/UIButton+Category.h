//
//  UIButton+Category.h
//  HSFloatingBallDemo
//
//  Created by HandScape on 2018/8/29.
//  Copyright © 2018年 Yifan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UICategoryProtocl.h"


@interface UIButton (Category)<UICategoryProtocl>

- (UIButton * (^)(NSString *t))uicText;
- (UIButton * (^)(NSString *t, UIControlState state))uicTextAndState;
- (UIButton * (^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))uicContentHorizontalAlignment;
- (UIButton * (^)(UIControlContentVerticalAlignment contentHorizontalAlignment))uicContentVerticalAlignment;
- (UIButton * (^)(UIColor *tc))uicTextColor;
- (UIButton * (^)(UIColor *tc, UIControlState state))uicTextColorAndState;
- (UIButton * (^)(CGFloat f))uicFont;
- (UIButton * (^)(CGFloat f))uicBoldFont;
- (UIButton * (^)(NSInteger tag))uicTag;
- (UIButton * (^)(UIImage *image, UIControlState state))uicImage;
- (UIButton * (^)(UIImage *image, UIControlState state))uicBackgroundImage;
- (UIButton * (^)(id target, SEL action, UIControlEvents controlEvents))uicAddClick;
- (UIButton * (^)(UIColor *bgColor))uicBackgroundColor;
- (UIButton * (^)(CGFloat cornerRadius))uicCornerRadius;
- (UIButton * (^)(UIColor *borderColor))uicBorderColor;
- (UIButton * (^)(CGFloat borderWidth))uicBorderWidth;


@end

