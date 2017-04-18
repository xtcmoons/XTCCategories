//
//  UIImage+XTCAdd.h
//  XTCCategories
//
//  Created by LPPZ-User02 on 2017/4/18.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIImage (XTCAdd)

+ (UIImage *)xtc_imageWithColor:(UIColor *)color;
+ (UIImage *)xtc_imageWithColor:(UIColor *)color size:(CGSize)size;

@end
NS_ASSUME_NONNULL_END
