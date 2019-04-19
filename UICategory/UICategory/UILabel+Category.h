//
//  UILabel+Category.h
//  MonkeyDevTestDemoDylib
//
//  Created by HandScape on 2018/9/5.
//  Copyright © 2018年 chenWei. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UICategoryProtocl.h"

@interface UILabel (Category)<UICategoryProtocl>

- (UILabel * (^)(NSString *t))uicText;
- (UILabel * (^)(NSInteger numberOfLines))uicNumLines;
- (UILabel * (^)(CGFloat f))uicFont;
- (UILabel * (^)(CGFloat f))uicBoldFont;
- (UILabel * (^)(NSInteger tag))uicTag;
- (UILabel * (^)(UIColor *tc))uicTextColor;
- (UILabel * (^)(UIColor *bgColor))uicBackgroundColor;
- (UILabel * (^)(NSTextAlignment textAlignment))uicTextAlignment;
- (UILabel * (^)(CGFloat cornerRadius))uicCornerRadius;
- (UILabel * (^)(UIColor *borderColor))uicBorderColor;
- (UILabel * (^)(CGFloat borderWidth))uicBorderWidth;


@end
