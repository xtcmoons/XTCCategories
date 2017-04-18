//
//  UIButton+Chain.h
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/24.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIButton (Chain)

- (UIButton *(^)(NSString *title, UIControlState state))xtc_titleAndState;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateNormal;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateHighlighted;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateDisabled;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateSelected;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateFocused;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateApplication;
- (UIButton *(^)(NSString *title))xtc_titleAtUIControlStateReserved;

- (UIButton *(^)(UIColor *titleColor, UIControlState state))xtc_titleColorAndState;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateNormal;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateHighlighted;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateDisabled;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateSelected;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateFocused;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateApplication;
- (UIButton *(^)(UIColor *titleColor))xtc_titleColorAtUIControlStateReserved;

- (UIButton *(^)(UIImage *image, UIControlState state))xtc_imageAndState;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIControlStateNormal;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIControlStateHighlighted;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIUIControlStateDisabled;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIControlStateSelected;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIControlStateFocused;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIControlStateApplication;
- (UIButton *(^)(UIImage *image))xtc_imageAtUIControlStateReserved;

@end
NS_ASSUME_NONNULL_END
