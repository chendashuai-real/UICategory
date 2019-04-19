//
//  UIView+Category.h
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UICategoryProtocl.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Category)<UICategoryProtocl>

- (UIView * (^)(CGRect frame))uicFrame;
- (UIView * (^)(BOOL enabled))uicUserInteractionEnabled;
- (UIView * (^)(NSInteger tag))uicTag;
- (UIView * (^)(CGPoint center))uicCenter;
- (UIView * (^)(BOOL multipleTouchEnabled))uicMultipleTouchEnabled;
- (UIView * (^)(BOOL clipsToBounds))uicClipsToBounds;
- (UIView * (^)(UIColor *backgroundColor))uicBackgroundColor;
- (UIView * (^)(CGFloat alpha))uicAlpha;
- (UIView * (^)(BOOL opaque))uicOpaque;
- (UIView * (^)(BOOL hidden))uicHidden;
- (UIView * (^)(UIColor *tintColor))uicTintColor;


@end

NS_ASSUME_NONNULL_END
