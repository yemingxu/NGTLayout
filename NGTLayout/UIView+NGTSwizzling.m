//
//  UIView+NGTSwizzling.m
//

#import "UIView+NGTSwizzling.h"
#import <objc/runtime.h>

static inline void ngt_swizzleSelector(Class theClass, SEL originalSelector, SEL swizzledSelector) {
    Method originalMethod = class_getInstanceMethod(theClass, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(theClass, swizzledSelector);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

@implementation UIView (NGTSwizzling)

- (void)ngt_setLayoutSubviewBlock:(void(^)(id))block{
    
    objc_setAssociatedObject(self, @selector(ngt_layoutSubviewBlock), [block copy], OBJC_ASSOCIATION_COPY);
    
}
- (void(^)(id))ngt_layoutSubviewBlock{
    
    return objc_getAssociatedObject(self, _cmd);
    
}
- (BOOL)ngtAutoLayoutEnable{
    NSNumber *output = objc_getAssociatedObject(self, _cmd);
    if (!output) {
        return NO;
    }
    return output.boolValue;
}
- (void)setNgtAutoLayoutEnable:(BOOL)ngtAutoLayoutEnable{
    
    BOOL _ngtAutoLayoutEnable = self.ngtAutoLayoutEnable;
    
    objc_setAssociatedObject(self, @selector(ngtAutoLayoutEnable), @(ngtAutoLayoutEnable), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    if(ngtAutoLayoutEnable && _ngtAutoLayoutEnable == NO){
        
        [[self class] ngtSwizzling];
        
    }else if(ngtAutoLayoutEnable == NO && _ngtAutoLayoutEnable){
        
        [[self class] ngtSwizzling];
        
    }
    
}
- (void)ngt_layoutSubviews{
    
    [self ngt_layoutSubviews];
    
    void(^block)(id) = [self ngt_layoutSubviewBlock];
    if(block){
        block(self);
    }
    
}

+ (void)ngtSwizzling{
    
    SEL o_sel = @selector(ngt_layoutSubviews);
    SEL i_sel = @selector(layoutSubviews);
    ngt_swizzleSelector([self class], i_sel, o_sel);
    
}
@end
