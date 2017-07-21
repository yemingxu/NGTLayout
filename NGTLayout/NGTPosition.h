//
//  NGTPosition.h
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

#pragma mark - NGTPoint
@interface NGTPoint : NSObject
@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;

@property (nonatomic,copy) NGTPoint * (^doX)(CGFloat);
@property (nonatomic,copy) NGTPoint * (^doY)(CGFloat);
@property (nonatomic,copy) NGTPoint * (^doXY)(CGFloat,CGFloat);
@property (nonatomic,assign) CGPoint point;

+ (instancetype)pointByX:(CGFloat)x y:(CGFloat)y;

@end

#pragma mark - NGTSize
@interface NGTSize : NSObject
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGSize size;

@property (nonatomic,copy) NGTSize * (^doW)(CGFloat);
@property (nonatomic,copy) NGTSize * (^doH)(CGFloat);
@property (nonatomic,copy) NGTSize * (^doWH)(CGFloat,CGFloat);

+ (instancetype)sizeByWidth:(CGFloat)width height:(CGFloat)height;

@end


#pragma mark - NGTRect
@interface NGTRect : NSObject

@property (nonatomic,strong) NGTPoint *origin;
@property (nonatomic,strong) NGTSize *size;
@property (nonatomic,readonly) CGFloat maxX;
@property (nonatomic,readonly) CGFloat maxY;


@property (nonatomic,copy) NGTRect * (^doX)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doY)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doXY)(CGFloat,CGFloat);
@property (nonatomic,copy) NGTRect * (^doOrigin)(NGTPoint *);
@property (nonatomic,copy) NGTRect * (^doW)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doH)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doWH)(CGFloat,CGFloat);
@property (nonatomic,copy) NGTRect * (^doSize)(NGTSize *);

@property (nonatomic,copy) NGTRect * (^doMidX)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doMidY)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doMaxX)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doMaxY)(CGFloat);



@property (nonatomic,copy) NGTRect * (^doXOffset)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doYOffset)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doMaxXOffset)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doMaxYOffset)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doWOffset)(CGFloat);
@property (nonatomic,copy) NGTRect * (^doHOffset)(CGFloat);

@property (nonatomic,assign) CGRect rect;

+ (instancetype)rectByX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;

@end




