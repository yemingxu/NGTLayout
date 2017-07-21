//
//  UIView+NGTPositionDo.m
//
//  Created by JoeXu on 2017/6/7.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import "UIView+NGTPositionDo.h"
#import "NGTPositionMake.h"

@interface NGTViewPosition()
@property (nonatomic,assign,readwrite) CGRect frame;
@end
@implementation NGTViewPosition
+ (instancetype)positionWithFrame:(CGRect)frame{
    return [[NGTViewPosition alloc] initWithFrame:frame];
}
- (instancetype)init{
    return [[NGTViewPosition alloc] initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super init]){
        self.frame = frame;
    }
    return self;
}
- (void)feedback{
    self.view.frame = self.frame;
}

//Base

-(NGTViewPosition *(^)(CGFloat))doTop{
    return ^(CGFloat y){
        self.frame = NGTRectMakeIn(self.frame).doY(y).rect;
        return self;
    };
}
- (NGTViewPosition *(^)(CGFloat))doBottom{
    return ^(CGFloat maxY){
        self.frame = NGTRectMakeIn(self.frame).doMaxY(maxY).rect;
        return self;
    };
}
-(NGTViewPosition *(^)(CGFloat))doLeft{
    return ^(CGFloat x){
        self.frame = NGTRectMakeIn(self.frame).doX(x).rect;
        return self;
    };
}
- (NGTViewPosition *(^)(CGFloat))doRight{
    return ^(CGFloat maxX){
        self.frame = NGTRectMakeIn(self.frame).doMaxX(maxX).rect;
        return self;
    };
}

-(NGTViewPosition *(^)(CGFloat))doW{
    return ^(CGFloat width){
        self.frame = NGTRectMakeIn(self.frame).doW(width).rect;
        return self;
    };
}
-(NGTViewPosition *(^)(CGFloat))doH{
    return ^(CGFloat height){
        self.frame = NGTRectMakeIn(self.frame).doH(height).rect;
        return self;
    };
}

//Assist
-(NGTViewPosition *(^)(CGPoint origin))doOrigin{
    return ^(CGPoint origin){
        self.frame = NGTRectMakeIn(self.frame).doX(origin.x).doY(origin.y).rect;
        return self;
    };
}

-(NGTViewPosition *(^)(CGSize))doSize{
    return ^(CGSize size){
        self.frame = NGTRectMakeIn(self.frame).doWH(size.width,size.height).rect;
        return self;
    };
}

- (NGTViewPosition *(^)(CGFloat))doCenterX{
    return ^(CGFloat centerX){
        self.frame = NGTRectMakeIn(self.frame).doMidX(centerX).rect;
        return self;
    };
}
- (NGTViewPosition *(^)(CGFloat))doCenterY{
    return ^(CGFloat centerY){
        self.frame = NGTRectMakeIn(self.frame).doMidY(centerY).rect;
        return self;
    };
}
- (NGTViewPosition *(^)(CGPoint))doCenter{
    return ^(CGPoint center){
        self.frame = NGTRectMakeIn(self.frame).doMidX(center.x).doMidY(center.y).rect;
        return self;
    };
}



//偏移
-(NGTViewPosition *(^)(CGFloat))doLeftOffset{
    return ^(CGFloat offset){
        self.frame = NGTRectMakeIn(self.frame).doX(self.frame.origin.x+offset).rect;
        return self;
    };
}
-(NGTViewPosition *(^)(CGFloat))doTopOffset{
    return ^(CGFloat offset){
        self.frame = NGTRectMakeIn(self.frame).doY(self.frame.origin.y+offset).rect;
        return self;
    };
}
- (NGTViewPosition *(^)(CGFloat))doRightOffset{
    return ^(CGFloat offset){
        NGTRect *rect = NGTRectMakeIn(self.frame);
        self.frame = rect.doMaxX(rect.maxX+offset).rect;
        return self;
    };
}
- (NGTViewPosition *(^)(CGFloat))doBottomOffset{
    return ^(CGFloat offset){
        NGTRect *rect = NGTRectMakeIn(self.frame);
        self.frame = rect.doMaxY(rect.maxY+offset).rect;
        return self;
    };
}
-(NGTViewPosition *(^)(CGFloat))doWOffset{
    return ^(CGFloat offset){
        NGTRect *rect = NGTRectMakeIn(self.frame);
        self.frame = rect.doW(rect.size.width+offset).rect;
        return self;
    };
}
-(NGTViewPosition *(^)(CGFloat))doHOffset{
    return ^(CGFloat offset){
        NGTRect *rect = NGTRectMakeIn(self.frame);
        self.frame = rect.doH(rect.size.height+offset).rect;
        return self;
    };
}
@end

@implementation UIView (NGTPositionDo)
- (NGTViewPosition *)ngtPosition{
    NGTViewPosition *p = [NGTViewPosition positionWithFrame:self.frame];
    p.view = self;
    return p;
}
@end
