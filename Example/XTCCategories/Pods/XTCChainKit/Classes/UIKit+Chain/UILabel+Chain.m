//
//  UILabel+Chain.m
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/24.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import "UILabel+Chain.h"

@implementation UILabel (Chain)

- (UILabel * _Nonnull (^)(NSInteger))xtc_numberOfLines {
    return ^id(NSInteger numberOfLines) {
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSTextAlignment))xtc_textAlignment {
    return ^id(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSLineBreakMode))xtc_lineBreakMode {
    return ^id(NSLineBreakMode lineBreakMode) {
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSString *))xtc_text {
    return ^id(NSString *text) {
        self.text = text;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor *))xtc_textColor {
    return ^id(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor *))xtc_highlightedTextColor {
    return ^id(UIColor *highlightedTextColor) {
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor *))xtc_shadowColor {
    return ^id(UIColor *shadowColor) {
        self.shadowColor = shadowColor;
        return self;
    };
}

- (UILabel * _Nonnull (^)(CGFloat, CGFloat))xtc_shadowOffset {
    return ^id(CGFloat width, CGFloat height) {
        self.shadowOffset = (CGSize){width, height};
        return self;
    };
}

- (UILabel * _Nonnull (^)(CGFloat))xtc_systemFontOfSize {
    return ^id(CGFloat fontSize) {
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (UILabel * _Nonnull (^)(CGFloat))xtc_boldSystemFontOfSize {
    return ^id(CGFloat fontSize) {
        self.font = [UIFont boldSystemFontOfSize:fontSize];
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIFont *))xtc_font {
    return ^id(UIFont *font) {
        self.font = font;
        return self;
    };
}

@end
