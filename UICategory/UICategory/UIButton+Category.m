//
//  UIButton+Category.m
//  HSFloatingBallDemo
//
//  Created by HandScape on 2018/8/29.
//  Copyright © 2018年 Yifan. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)


- (UIButton * (^)(NSString *t))uicText {
    return ^id(NSString *t){
        [self setTitle:t forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(UIColor *tc))uicTextColor {
    return ^id(UIColor *tc){
        [self setTitleColor:tc forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(NSString *t, UIControlState state))uicTextAndState {
    return ^id(NSString *t, UIControlState state){
        [self setTitle:t forState:(state)];
        return self;
    };
}

- (UIButton * (^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))uicContentHorizontalAlignment {
    return ^id(UIControlContentHorizontalAlignment contentHorizontalAlignment){
        self.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}
- (UIButton * (^)(UIControlContentVerticalAlignment contentVerticalAlignment))uicContentVerticalAlignment {
    return ^id(UIControlContentVerticalAlignment contentVerticalAlignment){
        self.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (UIButton * (^)(UIColor *tc, UIControlState state))uicTextColorAndState {
    return ^id(UIColor *tc, UIControlState state){
        [self setTitleColor:tc forState:(state)];
        return self;
    };
}

- (UIButton * (^)(CGFloat f))uicFont {
    return ^id(CGFloat f){
        self.titleLabel.font = [UIFont systemFontOfSize:f];
        return self;
    };
}

- (UIButton * (^)(CGFloat f))uicBoldFont {
    return ^id(CGFloat f){
        self.titleLabel.font = [UIFont boldSystemFontOfSize:f];
        return self;
    };
}

- (UIButton * (^)(NSInteger tag))uicTag {
    return ^id(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

- (UIButton * (^)(UIImage *image, UIControlState state))uicImage {
    return ^id(UIImage *image, UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton * (^)(UIImage *image, UIControlState state))uicBackgroundImage {
    return ^id(UIImage *image, UIControlState state){
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

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

- (UIButton * (^)(id target, SEL action, UIControlEvents controlEvents))uicAddClick {
    return ^id(id target, SEL action, UIControlEvents controlEvents){
        [self addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (UIButton * (^)(UIColor *bgColor))uicBackgroundColor {
    return ^id(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
}

- (UIButton * (^)(CGFloat cornerRadius))uicCornerRadius {
    return ^id(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIButton * (^)(UIColor *borderColor))uicBorderColor {
    return ^id(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UIButton * (^)(CGFloat borderWidth))uicBorderWidth {
    return ^id(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}



@end
