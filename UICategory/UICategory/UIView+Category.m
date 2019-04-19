//
//  UIView+Category.m
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

- (nonnull id<UICategoryProtocl>  _Nonnull (^)(MASConstraintMakerBlock _Nonnull))uic_makeConstraints {
    return ^id(MASConstraintMakerBlock block){
        [self mas_makeConstraints:block];
        return self;
    };
}

- (nonnull id<UICategoryProtocl>  _Nonnull (^)(id _Nonnull))uicSuperView {
    return ^id(id superView){
        [superView addSubview:self];
        return self;
    };
}

- (UIView * (^)(CGRect frame))uicFrame {
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIView * (^)(BOOL enabled))uicUserInteractionEnabled {
    return ^id(BOOL enabled){
        self.userInteractionEnabled = enabled;
        return self;
    };
}
- (UIView * (^)(NSInteger tag))uicTag {
    return ^id(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
- (UIView * (^)(CGPoint center))uicCenter {
    return ^id(CGPoint center){
        self.center = center;
        return self;
    };
}

- (UIView * (^)(BOOL multipleTouchEnabled))uicMultipleTouchEnabled {
    return ^id(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (UIView * (^)(BOOL clipsToBounds))uicClipsToBounds {
    return ^id(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}
- (UIView * (^)(UIColor *backgroundColor))uicBackgroundColor {
    return ^id(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
- (UIView * (^)(CGFloat alpha))uicAlpha {
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}
- (UIView * (^)(BOOL opaque))uicOpaque {
    return ^id(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}
- (UIView * (^)(BOOL hidden))uicHidden {
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}
- (UIView * (^)(UIColor *tintColor))uicTintColor {
    return ^id(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}


@end
