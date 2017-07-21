//
//  UIView+NGTPosition.h
//  YDLTicketsSDK
//
//  Created by JoeXu on 2017/6/6.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NGTPosition)
@property (nonatomic,assign) CGFloat ngtWidth;
@property (nonatomic,assign) CGFloat ngtHeight;
@property (nonatomic,assign) CGSize ngtSize;
@property (nonatomic,assign) CGFloat ngtLeft;
@property (nonatomic,assign) CGFloat ngtRight;
@property (nonatomic,assign) CGFloat ngtTop;
@property (nonatomic,assign) CGFloat ngtBottom;

@property (nonatomic,assign) CGFloat ngtCenterX;
@property (nonatomic,assign) CGFloat ngtCenterY;
@property (nonatomic,assign) CGPoint ngtCenter;

@property (nonatomic,assign,readonly) CGFloat ngtInnerCenterX;
@property (nonatomic,assign,readonly) CGFloat ngtInnerCenterY;
@property (nonatomic,assign,readonly) CGPoint ngtInnerCenter;

@end



