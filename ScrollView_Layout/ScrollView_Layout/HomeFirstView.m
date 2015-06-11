//
//  HomeFirstView.m
//  HNAir
//
//  Created by rytong on 15/4/21.
//  Copyright (c) 2015年 rytong. All rights reserved.
//

#import "HomeFirstView.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
@implementation HomeFirstView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
        self.backgroundColor=[UIColor lightGrayColor];
    }
    return self;
}

-(void)initView{
    
    
    UIButton *ticktBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [ticktBtn setBackgroundColor:[UIColor whiteColor]];
    [ticktBtn setTitle:@"first button" forState:UIControlStateNormal];
    ticktBtn.frame=CGRectMake(40, 140, SCREEN_WIDTH-80, 40);
    [ticktBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [ticktBtn addTarget:self action:@selector(firstBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:ticktBtn];
    
    UIButton *flight=[UIButton buttonWithType:UIButtonTypeCustom];
    [flight setBackgroundColor:[UIColor whiteColor]];
    [flight setTitle:@"second button" forState:UIControlStateNormal];
    flight.frame=CGRectMake(40, 200, SCREEN_WIDTH-80, 40);
    [flight setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [flight addTarget:self action:@selector(secondBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:flight];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundColor:[UIColor whiteColor]];
    [backBtn setTitle:@"HomeBtn" forState:UIControlStateNormal];
    backBtn.frame=CGRectMake(40, 260, 100, 40);
    backBtn.layer.cornerRadius = 6;
    backBtn.layer.borderColor = RGBCOLOR(200, 200, 200).CGColor;
    backBtn.layer.borderWidth = 1;
    [backBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backToRootView) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:backBtn];

    
}


- (void)firstBtnClick{    
    NSLog(@"first button");
    FirstViewController * fvc = [[FirstViewController alloc]init];
    [APPLICATION.navi pushViewController:fvc animated:YES];
}

- (void)secondBtnClick{
    SecondViewController * svc = [[SecondViewController alloc]init];
    [APPLICATION.navi pushViewController:svc animated:YES];
    NSLog(@"second button");
}

-(void)backToRootView{
    [APPLICATION.navi popToRootViewControllerAnimated:NO];
}

//


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
