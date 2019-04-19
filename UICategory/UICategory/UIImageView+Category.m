//
//  UIImageView+Category.m
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import "UIImageView+Category.h"

@implementation UIImageView (Category)

+ (UIImageView * (^)(NSString *imageName))uicImageName {
    return ^id(NSString *imageName){
        return [[self alloc]initWithImage:[UIImage imageNamed:imageName]];
    };
}

- (UIImageView * (^)(UIImage *image))uicImage {
    return ^id(UIImage *image){
        self.image = image;
        return self;
    };
}
- (UIImageView * (^)(UIImage *highlightedImage))uicHighlightedImage {
    return ^id(UIImage *highlightedImage){
        self.highlightedImage = highlightedImage;
        return self;
    };
}
- (UIImageView * (^)(UIImage *image, UIImage *highlightedImage))uicImageAndHighlightedImage {
    return ^id(UIImage *image, UIImage *highlightedImage) {
        return [self initWithImage:image highlightedImage:highlightedImage];
    };
}
- (UIImageView * (^)(BOOL enabled))uicUserInteractionEnabled {
    return ^id(BOOL enabled){
        self.userInteractionEnabled = enabled;
        return self;
    };
}
- (UIImageView * (^)(BOOL highlighted))uicHighlighted {
    return ^id(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

- (UIImageView * (^)(NSArray<UIImage *> *animationImages))uicAnimationImages {
    return ^id(NSArray<UIImage *> *animationImages){
        self.animationImages = animationImages;
        return self;
    };
}
- (UIImageView * (^)(NSArray<UIImage *> *highlightedAnimationImages))uicHighlightedAnimationImages {
    return ^id(NSArray<UIImage *> *highlightedAnimationImages){
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (UIImageView * (^)(NSInteger tag))uicTag {
    return ^id(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

- (UIImageView * (^)(UIViewContentMode contentMode))uicContentMode {
    return ^id(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

- (UIImageView * (^)(NSTimeInterval animationDuration))uicAnimationDuration {
    return ^id(NSTimeInterval animationDuration){
        self.animationDuration = animationDuration;
        return self;
    };
}
- (UIImageView * (^)(NSInteger animationRepeatCount))uicAnimationRepeatCount {
    return ^id(NSInteger animationRepeatCount){
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}
- (UIImageView * (^)(UIColor *tintColor))uicTintColor {
    return ^id(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

- (UIImageView * (^)(void))uicStartAnimating {
    return ^id(void){
        [self startAnimating];
        return self;
    };
}
- (UIImageView * (^)(void))uicStopAnimating {
    return ^id(void){
        [self stopAnimating];
        return self;
    };
}

- (BOOL (^)(void))uicIsAnimating {
    return ^BOOL(void){
        return [self isAnimating];
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

- (UIImageView * (^)(UIColor *bgColor))uicBackgroundColor {
    return ^id(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
}

- (UIImageView * (^)(CGFloat cornerRadius))uicCornerRadius {
    return ^id(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIImageView * (^)(UIColor *borderColor))uicBorderColor {
    return ^id(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UIImageView * (^)(CGFloat borderWidth))uicBorderWidth {
    return ^id(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}


@end
