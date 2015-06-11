//
//  HomeSecondeView.m
//  HNAir
//
//  Created by rytong on 15/4/21.
//  Copyright (c) 2015年 rytong. All rights reserved.
//

#import "HomeSecondeView.h"
#import "SecondViewController.h"
@implementation HomeSecondeView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
        self.userInteractionEnabled = YES;
        self.backgroundColor=[UIColor greenColor];
    }
    return self;
}


-(void)initUI{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundColor:[UIColor whiteColor]];
    [backBtn setTitle:@"ToSecondBtn" forState:UIControlStateNormal];
    backBtn.frame=CGRectMake(40, 160, 160, 40);
    backBtn.layer.cornerRadius = 6;
    backBtn.layer.borderColor = RGBCOLOR(200, 200, 200).CGColor;
    backBtn.layer.borderWidth = 1;
    [backBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backToRootView) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:backBtn];
    
    UIButton *homeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [homeBtn setBackgroundColor:[UIColor whiteColor]];
    [homeBtn setTitle:@"HomeBtn" forState:UIControlStateNormal];
    homeBtn.frame=CGRectMake(40, 260, 100, 40);
    homeBtn.layer.cornerRadius = 6;
    homeBtn.layer.borderColor = RGBCOLOR(200, 200, 200).CGColor;
    homeBtn.layer.borderWidth = 1;
    [homeBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [homeBtn addTarget:self action:@selector(homeBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:homeBtn];
    self.tag = 1008;
    
}

-(void)backToRootView{
    SecondViewController * svc = [[SecondViewController alloc]init];
    [APPLICATION.navi pushViewController:svc animated:YES];
}

-(void)homeBtn{
    [APPLICATION.navi popToRootViewControllerAnimated:YES];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
