//
//  UILabel+Chain.h
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/24.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UILabel (Chain)

- (UILabel *(^)(NSInteger numberOfLines))xtc_numberOfLines;
- (UILabel *(^)(NSTextAlignment textAlignment))xtc_textAlignment;
- (UILabel *(^)(NSLineBreakMode lineBreakMode))xtc_lineBreakMode;
- (UILabel *(^)(NSString *text))xtc_text;

- (UILabel *(^)(UIColor *textColor))xtc_textColor;
- (UILabel *(^)(UIColor *highlightedTextColor))xtc_highlightedTextColor;

- (UILabel *(^)(UIColor *shadowColor))xtc_shadowColor;
- (UILabel *(^)(CGFloat width, CGFloat height))xtc_shadowOffset;

- (UILabel *(^)(CGFloat fontSize))xtc_systemFontOfSize;
- (UILabel *(^)(CGFloat fontSize))xtc_boldSystemFontOfSize;
- (UILabel *(^)(UIFont *font))xtc_font;

@end
NS_ASSUME_NONNULL_END
