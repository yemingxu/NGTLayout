//
//  UIView+NGTPosition.m
//  YDLTicketsSDK
//
//  Created by JoeXu on 2017/6/6.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import "UIView+NGTPosition.h"

#import "NGTPositionMake.h"

@implementation UIView (NGTPosition)

/*
 Getter
 */

//Size
- (CGFloat)ngtWidth{
    return CGRectGetWidth(self.frame);
}

- (CGFloat)ngtHeight{
    return CGRectGetHeight(self.frame);
}
- (CGSize)ngtSize{
    return self.frame.size;
}
//上下左右
- (CGFloat)ngtLeft{
    return CGRectGetMinX(self.frame);
}
- (CGFloat)ngtRight{
    return CGRectGetMaxX(self.frame);
}
- (CGFloat)ngtTop{
    return CGRectGetMinY(self.frame);
}
- (CGFloat)ngtBottom{
    return CGRectGetMaxY(self.frame);
}
//中心
- (CGFloat)ngtCenterX{
    return CGRectGetMidX(self.frame);
}
- (CGFloat)ngtCenterY{
    return CGRectGetMidY(self.frame);
}
- (CGPoint)ngtCenter{
    return self.center;
}

//内部中心
- (CGPoint)ngtInnerCenter{
    return CGPointMake(self.ngtInnerCenterX, self.ngtInnerCenterY);
}
- (CGFloat)ngtInnerCenterX{
    return self.ngtWidth/2.0;
}
- (CGFloat)ngtInnerCenterY{
    return self.ngtHeight/2.0;
}



/*
 Setter
 */

//上下左右
- (void)setNgtTop:(CGFloat)ngtTop{
    self.frame = NGTRectMakeIn(self.frame).doY(ngtTop).rect;
}
- (void)setNgtBottom:(CGFloat)ngtBottom{
    self.frame = NGTRectMakeIn(self.frame).doMaxY(ngtBottom).rect;
}
- (void)setNgtLeft:(CGFloat)ngtLeft{
    self.frame = NGTRectMakeIn(self.frame).doX(ngtLeft).rect;
}
- (void)setNgtRight:(CGFloat)ngtRight{
    self.frame = NGTRectMakeIn(self.frame).doMaxX(ngtRight).rect;
}

//Size
- (void)setNgtWidth:(CGFloat)ngtWidth{
    self.frame = NGTRectMakeIn(self.frame).doW(ngtWidth).rect;
}
- (void)setNgtHeight:(CGFloat)ngtHeight{
    self.frame = NGTRectMakeIn(self.frame).doH(ngtHeight).rect;
}
- (void)setNgtSize:(CGSize)ngtSize{
    self.frame = NGTRectMakeIn(self.frame).doWH(ngtSize.width,ngtSize.height).rect;
}

//中心
- (void)setNgtCenterX:(CGFloat)ngtCenterX{
    self.frame = NGTRectMakeIn(self.frame).doMidX(ngtCenterX).rect;
}
- (void)setNgtCenterY:(CGFloat)ngtCenterY{
    self.frame = NGTRectMakeIn(self.frame).doMidY(ngtCenterY).rect;
}
- (void)setNgtCenter:(CGPoint)ngtCenter{
    self.frame = NGTRectMakeIn(self.frame).doMidX(ngtCenter.x).doMidY(ngtCenter.y).rect;
}

@end







