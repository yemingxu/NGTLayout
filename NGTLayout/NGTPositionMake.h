//
//  NGTPosition.h
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

#import "NGTPosition.h"

#pragma mark - 构造方法
#define NGTPointZero [[NGTPoint alloc] init]
#define NGTSizeZero [[NGTSize alloc] init]
#define NGTRectZero [[NGTRect alloc] init]

extern NGTPoint* NGTPointMake(CGFloat x,CGFloat y);
extern NGTPoint* NGTPointMakeIn(CGPoint point);


extern NGTSize* NGTSizeMake(CGFloat width,CGFloat height);

extern NGTSize* NGTSizeMakeIn(CGSize size);

extern NGTRect* NGTRectMake(NGTPoint *origin,NGTSize *size);
extern NGTRect* NGTRectMake_(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
extern NGTRect* NGTRectMakeIn(CGRect rect);
extern NGTRect* NGTRectMakeWH(CGFloat width,CGFloat height);



