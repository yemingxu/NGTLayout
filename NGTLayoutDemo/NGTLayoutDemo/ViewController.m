//
//  ViewController.m
//  NGTLayoutDemo
//
//  Created by JoeXu on 2017/7/21.
//  Copyright © 2017年 JoeXu. All rights reserved.
//

#import "ViewController.h"

#import "NGTLayout.h"

@interface DemoView: UIView

@property (nonatomic,strong) UIView *contentView;

@end

@implementation DemoView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _contentView = [UIView new];
        _contentView.backgroundColor = [UIColor redColor];
        
        [self addSubview:_contentView];
    }
    return self;
}
@end



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DemoView *dv = [[DemoView alloc] initWithFrame:(CGRect){10,10,100,100}];
    
    [dv ngt_setLayoutSubviewBlock:^(DemoView *mySelf) {
       
        [mySelf.contentView.ngtPosition
         .doH(20).doW(20)
         .doOrigin((CGPoint){0,0})
         feedback];
        
    }];
    
    dv.ngtAutoLayoutEnable = YES;
//    [dv layoutSubviews];
    [self.view addSubview:dv];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
