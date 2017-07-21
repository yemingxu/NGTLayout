//
//  UIView+NGTPositionDo.h
//  Created by JoeXu on 2017/6/7.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NGTSwizzling)

- (void)ngt_setLayoutSubviewBlock:(void(^)(id))block;

@property (nonatomic,assign) BOOL ngtAutoLayoutEnable;

@end
