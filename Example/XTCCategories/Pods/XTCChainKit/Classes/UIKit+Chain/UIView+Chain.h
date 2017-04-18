//
//  UIView+Chain.h
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/23.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIView (Chain)

- (UIView * (^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))xtc_frame;
- (UIView * (^)(CGFloat width, CGFloat height))xtc_size;
- (UIView *(^)(CGFloat x))xtc_x;
- (UIView *(^)(CGFloat y))xtc_y;
- (UIView *(^)(CGFloat centerX))xtc_centerX;
- (UIView *(^)(CGFloat centerY))xtc_centerY;
- (UIView *(^)(CGFloat width))xtc_width;
- (UIView *(^)(CGFloat height))xtc_height;

- (UIView * (^)(UIColor *color))xtc_backgroundColor;
- (UIView *(^)(UIColor *borderColor))xtc_borderColor;
- (UIView *(^)(CGFloat borderWidth))xtc_borderWidth;
- (UIView *(^)(CGFloat cornerRadius))xtc_cornerRadius;

- (UIView *(^)(CGFloat alpha))xtc_alpha;
- (UIView *(^)(BOOL opaque))xtc_opaque;

- (UIView *(^)(BOOL masksToBounds))xtc_masksToBounds;
- (UIView *(^)(BOOL clipsToBounds))xtc_clipsToBounds;
- (UIView *(^)(BOOL hidden))xtc_hidden;
- (UIView *(^)(BOOL userInteractionEnabled))xtc_userInteractionEnabled;
- (UIView *(^)(BOOL exclusiveTouch))xtc_exclusiveTouch;

- (UIView *(^)(UIViewContentMode contentMode))xtc_contentMode;

- (UIView *(^)(UIView *subView))xtc_addSubview;

@end
NS_ASSUME_NONNULL_END
