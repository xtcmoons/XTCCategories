//
//  UIControl+Chain.h
//  XTC_ChainKit
//
//  Created by LPPZ-User02 on 2017/3/24.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIControl (Chain)

- (UIControl *(^)(BOOL enabled))xtc_enabled;
- (UIControl *(^)(BOOL selected))xtc_selected;
- (UIControl *(^)(BOOL highlighted))xtc_highlighted;

@end
NS_ASSUME_NONNULL_END
