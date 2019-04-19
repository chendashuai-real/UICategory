//
//  UILabel+Category.m
//  MonkeyDevTestDemoDylib
//
//  Created by HandScape on 2018/9/5.
//  Copyright © 2018年 chenWei. All rights reserved.
//

#import "UILabel+Category.h"


@implementation UILabel (Category)


- (UILabel * (^)(NSString *t))uicText {
    return ^id(NSString *t){
        self.text = t;
        return self;
    };
}

- (UILabel * (^)(NSInteger numberOfLines))uicNumLines {
    return ^id(NSInteger numberOfLines){
        self.numberOfLines = 0;
        return self;
    };
}

- (UILabel * (^)(CGFloat f))uicFont {
    return ^id(CGFloat f){
        [self setFont:[UIFont systemFontOfSize:f]];
        return self;
    };
}

- (UILabel * (^)(CGFloat f))uicBoldFont {
    return ^id(CGFloat f){
        [self setFont:[UIFont boldSystemFontOfSize:f]];
        return self;
    };
}

- (UILabel * (^)(NSInteger tag))uicTag {
    return ^id(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

- (UILabel * (^)(UIColor *tc))uicTextColor {
    return ^id(UIColor *tc){
        [self setTextColor:tc];
        return self;
    };
}

- (UILabel * (^)(UIColor *bgColor))uicBackgroundColor {
    return ^id(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
}

- (UILabel * (^)(NSTextAlignment textAlignment))uicTextAlignment {
    return ^id(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
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


- (UILabel * (^)(CGFloat cornerRadius))uicCornerRadius {
    return ^id(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UILabel * (^)(UIColor *borderColor))uicBorderColor {
    return ^id(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UILabel * (^)(CGFloat borderWidth))uicBorderWidth {
    return ^id(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}





@end
