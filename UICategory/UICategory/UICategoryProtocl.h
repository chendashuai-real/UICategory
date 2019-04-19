//
//  UICategoryProtocl.h
//  UICategory
//
//  Created by HandScape on 2019/4/16.
//  Copyright © 2019 HandScape. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol UICategoryProtocl <NSObject>

typedef void(^MASConstraintMakerBlock)(MASConstraintMaker *make);

- (id<UICategoryProtocl> (^)(id superView))uicSuperView;

- (id<UICategoryProtocl> (^)(MASConstraintMakerBlock block))uic_makeConstraints;


@end

NS_ASSUME_NONNULL_END
