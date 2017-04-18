//
//  UIImage+XTCAdd.m
//  XTCCategories
//
//  Created by LPPZ-User02 on 2017/4/18.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import "UIImage+XTCAdd.h"

@implementation UIImage (XTCAdd)

+ (UIImage *)xtc_imageWithColor:(UIColor *)color {
    return [self xtc_imageWithColor:color size:CGSizeMake(1, 1)];
}

+ (UIImage *)xtc_imageWithColor:(UIColor *)color size:(CGSize)size {
    if (!color || size.width <= 0 || size.height <= 0)
        return nil;
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
