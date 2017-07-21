//
//  NGTEasyLayout.m
//  YDLTicketsSDK
//
//  Created by JoeXu on 2017/6/6.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import "NGTPositionMake.h"

NGTPoint* NGTPointMake(CGFloat x,CGFloat y){
    NGTPoint *point = [[NGTPoint alloc] init];
    point.x = x;
    point.y = y;
    return point;
}
NGTPoint* NGTPointMakeIn(CGPoint point){
    return NGTPointMake(point.x,point.y);
}


NGTSize* NGTSizeMake(CGFloat width,CGFloat height){
    NGTSize *size = [[NGTSize alloc] init];
    size.width = width;
    size.height = height;
    return size;
}

NGTSize* NGTSizeMakeIn(CGSize size){
    return NGTSizeMake(size.width,size.height);
}


NGTRect* NGTRectMake(NGTPoint *origin,NGTSize *size){
    NGTRect *rect = [[NGTRect alloc] init];
    rect.origin = origin;
    rect.size = size;
    return rect;
}
NGTRect* NGTRectMake_(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
    return NGTRectMake(NGTPointMake(x, y),NGTSizeMake(width,height));
}
NGTRect* NGTRectMakeIn(CGRect rect){
    return NGTRectMake(NGTPointMakeIn(rect.origin),NGTSizeMakeIn(rect.size));
}
NGTRect* NGTRectMakeWH(CGFloat width,CGFloat height){
    return NGTRectMake(NGTPointZero,NGTSizeMake(width,height));
}

