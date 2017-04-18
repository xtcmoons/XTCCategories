//
//  UIButton+Chain.m
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/24.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import "UIButton+Chain.h"

@implementation UIButton (Chain)

- (UIButton * _Nonnull (^)(NSString * _Nonnull, UIControlState))xtc_titleAndState {
    return ^id(NSString *title, UIControlState state) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateNormal {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateHighlighted {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateDisabled {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateSelected {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateFocused {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateFocused];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateApplication {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateApplication];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))xtc_titleAtUIControlStateReserved {
    return ^id(NSString *title) {
        NSCParameterAssert(title != nil);
        [self setTitle:title forState:UIControlStateReserved];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIControlState))xtc_titleColorAndState {
    return ^id(UIColor *titleColor, UIControlState state) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateNormal {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateHighlighted {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateDisabled {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateSelected {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateFocused {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateFocused];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateApplication {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateApplication];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))xtc_titleColorAtUIControlStateReserved {
    return ^id(UIColor *titleColor) {
        NSCParameterAssert(titleColor != nil);
        [self setTitleColor:titleColor forState:UIControlStateReserved];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull, UIControlState))xtc_imageAndState {
    return ^id(UIImage *image, UIControlState state) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIControlStateNormal {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIControlStateHighlighted {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIUIControlStateDisabled {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIControlStateSelected {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIControlStateFocused {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateFocused];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIControlStateApplication {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateApplication];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))xtc_imageAtUIControlStateReserved {
    return ^id(UIImage *image) {
        NSCParameterAssert(image != nil);
        [self setImage:image forState:UIControlStateReserved];
        return self;
    };
}
@end
