//
//  UIImage+category.m
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import "UIImage+Category.h"

@implementation UIImage (Category)

+ (UIImage * (^)(NSString *t))uicImageName {
    return ^id(NSString *t){
        [self imageNamed:t];
        return self;
    };
}

+ (UIImage * (^)(NSString *path))uicContentPath {
    return ^id(NSString *t){
        [self imageWithContentsOfFile:t];
        return self;
    };
}

+ (UIImage * (^)(NSData *data))uicData {
    return ^id(NSData *data){
        [self imageWithData:data];
        return self;
    };
}

+ (UIImage * (^)(NSData *data, CGFloat scale))uicDataAndScale {
    return ^id(NSData *data, CGFloat scale){
        [self imageWithData:data scale:scale];
        return self;
    };
}

- (UIImage * (^)(NSString *path))uicContentPath {
    return ^id(NSString *path){
        return [self initWithContentsOfFile:path];
    };
}

- (UIImage * (^)(NSData *data))uicData {
    return ^id(NSData *data){
        return [self initWithData:data];
    };
}

- (UIImage * (^)(NSData *data, CGFloat scale))uicDataAndScale {
    return ^id(NSData *data, CGFloat scale){
        return [self initWithData:data scale:scale];
    };
}


@end
