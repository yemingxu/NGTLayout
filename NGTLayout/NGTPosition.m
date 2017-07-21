//
//  NGTEasyLayout.m
//  YDLTicketsSDK
//
//  Created by JoeXu on 2017/6/6.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import "NGTPosition.h"

#pragma mark - NGTPoint
@implementation NGTPoint
- (instancetype)init{
    if (self = [super init]){
        self.x = 0;
        self.y = 0;
    }
    return  self;
}
+ (instancetype)pointByX:(CGFloat)x y:(CGFloat)y{
    NGTPoint *point = [[NGTPoint alloc] init];
    point.x = x;
    point.y = y;
    return point;
}
- (CGPoint)point{
    return CGPointMake(self.x, self.y);
}
- (NGTPoint *(^)(CGFloat))doX{
    return ^(CGFloat x){
        return [NGTPoint pointByX:x y:self.y];
    };
}
- (NGTPoint *(^)(CGFloat))doY{
    return ^(CGFloat y){
        return [NGTPoint pointByX:self.x y:y];
    };
}
- (NGTPoint *(^)(CGFloat,CGFloat))doXY{
    return ^(CGFloat x,CGFloat y){
        return [NGTPoint pointByX:x y:y];
    };
}
@end

#pragma mark - NGTSize
@implementation NGTSize
- (instancetype)init{
    if (self = [super init]){
        self.width = 0;
        self.height = 0;
    }
    return  self;
}
- (CGSize)size{
    return CGSizeMake(self.width, self.height);
}
+ (instancetype)sizeByWidth:(CGFloat)width height:(CGFloat)height{
    NGTSize *size = [[NGTSize alloc] init];
    size.width = width;
    size.height = height;
    return size;
}
- (NGTSize *(^)(CGFloat))doW{
    return ^(CGFloat width){
        return [NGTSize sizeByWidth:width height:self.height];
    };
}
- (NGTSize *(^)(CGFloat))doH{
    return ^(CGFloat height){
        return [NGTSize sizeByWidth:self.width height:height];
    };
}
- (NGTSize *(^)(CGFloat,CGFloat))doWH{
    return ^(CGFloat width,CGFloat height){
        return [NGTSize sizeByWidth:width height:height];
    };
}
@end

#pragma mark - NGTRect
@implementation NGTRect
- (instancetype)init{
    if (self = [super init]){
        self.origin = [[NGTPoint alloc] init];
        self.size = [[NGTSize alloc] init];
    }
    return self;
}
+ (instancetype)rectByX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height{
    NGTRect *rect = [[NGTRect alloc] init];
    rect.origin = [NGTPoint pointByX:x y:y];
    rect.size = [NGTSize sizeByWidth:width height:height];
    return rect;
}
- (CGFloat)maxX{
    return self.origin.x+self.size.width;
}
- (CGFloat)maxY{
    return self.origin.y + self.size.height;
}
- (CGRect)rect{
    return CGRectMake(self.origin.x, self.origin.y, self.size.width, self.size.height);
}

-(NGTRect *(^)(CGFloat))doX{
    return ^(CGFloat x){
        return [NGTRect rectByX:x y:self.origin.y width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doY{
    return ^(CGFloat y){
        return [NGTRect rectByX:self.origin.x y:y width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat,CGFloat))doXY{
    return ^(CGFloat x,CGFloat y){
        return [NGTRect rectByX:x y:self.origin.y width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(NGTPoint *))doOrigin{
    return ^(NGTPoint *origin){
        return [NGTRect rectByX:origin.x y:origin.y width:self.size.width height:self.size.height];
    };
}

-(NGTRect *(^)(CGFloat))doW{
    return ^(CGFloat width){
        return [NGTRect rectByX:self.origin.x y:self.origin.y width:width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doH{
    return ^(CGFloat height){
        return [NGTRect rectByX:self.origin.x y:self.origin.y width:self.size.width height:height];
    };
}
-(NGTRect *(^)(CGFloat,CGFloat))doWH{
    return ^(CGFloat width,CGFloat height){
        return [NGTRect rectByX:self.origin.x y:self.origin.y width:width height:height];
    };
}
-(NGTRect *(^)(NGTSize *))doSize{
    return ^(NGTSize *size){
        return [NGTRect rectByX:self.origin.x y:self.origin.y width:size.width height:size.height];
    };
}


- (NGTRect *(^)(CGFloat))doMidX{
    return ^(CGFloat midX){
        return [NGTRect rectByX:(midX-self.size.width/2.0) y:self.origin.y width:self.size.width height:self.size.height];
    };
}
- (NGTRect *(^)(CGFloat))doMidY{
    return ^(CGFloat midY){
        return [NGTRect rectByX:self.origin.x y:(midY-self.size.height/2.0) width:self.size.width height:self.size.height];
    };
}
- (NGTRect *(^)(CGFloat))doMaxX{
    return ^(CGFloat maxX){
        return [NGTRect rectByX:(maxX-self.size.width) y:self.origin.y width:self.size.width height:self.size.height];
    };
}
- (NGTRect *(^)(CGFloat))doMaxY{
    return ^(CGFloat maxY){
        return [NGTRect rectByX:self.origin.x y:(maxY-self.size.height) width:self.size.width height:self.size.height];
    };
}


-(NGTRect *(^)(CGFloat))doXOffset{
    return ^(CGFloat offset){
        return [NGTRect rectByX:self.origin.x+offset y:self.origin.y width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doYOffset{
    return ^(CGFloat offset){
        return [NGTRect rectByX:self.origin.x y:self.origin.y+offset width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doMaxXOffset{
    return ^(CGFloat offset){
        return [NGTRect rectByX:self.origin.x+self.size.width+offset y:self.origin.y width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doMaxYOffset{
    return ^(CGFloat offset){
        return [NGTRect rectByX:self.origin.x y:self.origin.y+self.size.height+offset width:self.size.width height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doWOffset{
    return ^(CGFloat offset){
        return [NGTRect rectByX:self.origin.x y:self.origin.y width:self.size.width+offset height:self.size.height];
    };
}
-(NGTRect *(^)(CGFloat))doHOffset{
    return ^(CGFloat offset){
        return [NGTRect rectByX:self.origin.x y:self.origin.y width:self.size.width height:self.size.height+offset];
    };
}




@end
