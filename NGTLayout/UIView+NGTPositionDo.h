//
//  UIView+NGTPositionDo.h
//  YDLTicketsSDK
//
//  Created by JoeXu on 2017/6/7.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NGTViewPosition : NSObject

@property (nonatomic,assign,readonly) CGRect frame;
+ (instancetype)positionWithFrame:(CGRect)frame;
- (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic,weak) UIView *view;

//反馈确认
- (void)feedback;

//Base
@property (nonatomic,copy,readonly) NGTViewPosition * (^doTop)(CGFloat top);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doBottom)(CGFloat bottom);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doLeft)(CGFloat left);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doRight)(CGFloat right);


@property (nonatomic,copy,readonly) NGTViewPosition * (^doW)(CGFloat width);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doH)(CGFloat height);

//Base
@property (nonatomic,copy,readonly) NGTViewPosition * (^doOrigin)(CGPoint origin);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doSize)(CGSize size);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doCenter)(CGPoint center);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doCenterX)(CGFloat centerX);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doCenterY)(CGFloat centerY);

//偏移
@property (nonatomic,copy,readonly) NGTViewPosition * (^doLeftOffset)(CGFloat offset);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doRightOffset)(CGFloat offset);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doTopOffset)(CGFloat offset);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doBottomOffset)(CGFloat offset);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doWOffset)(CGFloat offset);
@property (nonatomic,copy,readonly) NGTViewPosition * (^doHOffset)(CGFloat offset);

@end

@interface UIView (NGTPositionDo)
@property (nonatomic,readonly) NGTViewPosition *ngtPosition;
@end
