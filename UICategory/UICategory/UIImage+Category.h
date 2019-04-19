//
//  UIImage+category.h
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Category)

+ (UIImage * (^)(NSString *t))uicImageName;
+ (UIImage * (^)(NSString *path))uicContentPath;
+ (UIImage * (^)(NSData *data))uicData;
+ (UIImage * (^)(NSData *data, CGFloat scale))uicDataAndScale;
- (UIImage * (^)(NSString *path))uicContentPath;
- (UIImage * (^)(NSData *data))uicData;
- (UIImage * (^)(NSData *data, CGFloat scale))uicDataAndScale;



@end

NS_ASSUME_NONNULL_END
