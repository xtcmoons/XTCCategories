//
//  UIControl+Chain.m
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/24.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import "UIControl+Chain.h"

@implementation UIControl (Chain)

- (UIControl * _Nonnull (^)(BOOL))xtc_enabled {
    return ^id(BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}

- (UIControl * _Nonnull (^)(BOOL))xtc_selected {
    return ^id(BOOL selected) {
        self.selected = selected;
        return self;
    };
}

- (UIControl * _Nonnull (^)(BOOL))xtc_highlighted {
    return ^id(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}

@end
