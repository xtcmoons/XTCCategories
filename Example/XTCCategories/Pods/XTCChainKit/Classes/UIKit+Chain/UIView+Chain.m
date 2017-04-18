//
//  UIView+Chain.m
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/23.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import "UIView+Chain.h"

@implementation UIView (Chain)

- (UIView * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))xtc_frame {
    return ^id(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
        self.frame = (CGRect){x, y, width, height};
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat, CGFloat))xtc_size {
    return ^id(CGFloat width, CGFloat height) {
        CGRect frame = self.frame;
        frame.size.width = width;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_x {
    return ^id(CGFloat x) {
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_y {
    return ^id(CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_centerX {
    return ^id(CGFloat centerX) {
        CGPoint center = self.center;
        center.x = centerX;
        self.center = center;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_centerY {
    return ^id(CGFloat centerY) {
        CGPoint center = self.center;
        center.y = centerY;
        self.center = center;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_height {
    return ^id(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_width {
    return ^id(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))xtc_backgroundColor {
    return ^id(UIColor *color) {
        NSCParameterAssert(color != nil);
        self.backgroundColor = color;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))xtc_borderColor {
    return ^id(UIColor *borderColor) {
        NSCParameterAssert(borderColor != nil);
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_borderWidth {
    return ^id(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_cornerRadius {
    return ^id(CGFloat cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))xtc_alpha {
    return ^id(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))xtc_opaque {
    return ^id(BOOL opaque) {
        self.opaque = opaque;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))xtc_masksToBounds {
    return ^id(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))xtc_clipsToBounds {
    return ^id(BOOL clipsToBounds) {
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))xtc_hidden {
    return ^id(BOOL hidden) {
        self.hidden = hidden;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))xtc_userInteractionEnabled {
    return ^id(BOOL userInteractionEnabled) {
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))xtc_exclusiveTouch {
    return ^id(BOOL exclusiveTouch) {
        self.exclusiveTouch = exclusiveTouch;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIViewContentMode))xtc_contentMode {
    return ^id(UIViewContentMode contentMode) {
        self.contentMode = contentMode;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))xtc_addSubview {
    return ^id(UIView *subView) {
        NSCParameterAssert(subView != nil);
        [self addSubview:subView];
        return self;
    };
}

@end
