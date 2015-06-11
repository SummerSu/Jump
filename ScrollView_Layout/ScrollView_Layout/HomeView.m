//
//  HomeView.m
//  HNAir
//
//  Created by rytong on 15/4/21.
//  Copyright (c) 2015年 rytong. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView


- (id)initWithFrame:(CGRect)frame
{
    // 首页
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled=YES;
        self.backgroundColor=[UIColor whiteColor];
        _bgScrollView = [[UIScrollView alloc] initWithFrame:frame];
        _bgScrollView.delegate = self;
        _bgScrollView.pagingEnabled = YES;
        _bgScrollView.showsVerticalScrollIndicator = NO;
        _bgScrollView.showsHorizontalScrollIndicator = NO;
        _bgScrollView.scrollsToTop = NO;
        _bgScrollView.bounces = NO;
        _bgScrollView.backgroundColor=[UIColor whiteColor];
        
        [self addSubview:_bgScrollView];
        _bgScrollView.contentSize = CGSizeMake(SCREEN_WIDTH * 2, SCREEN_HEIGHT);
        [self initWithFirstView];
        [self initWithSecondeView];
    }
    return self;
}

// 显示第一屏
-(void)initWithFirstView{
    if (_firstView) {
        [_firstView removeFromSuperview];
    }else{
        _firstView=[[HomeFirstView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        HomeViewController * vc = [[HomeViewController alloc]init];
        vc.view = _firstView;
        [_bgScrollView addSubview:vc.view];
    }
    
    
}

// 显示第二屏
-(void)initWithSecondeView{
    
    if (_secondeView) {
        [_secondeView removeFromSuperview];
    }
    _secondeView=[[HomeSecondeView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];

    HomeSecondViewController * homeSecondVC = [[HomeSecondViewController alloc]init];
    homeSecondVC.view = _secondeView;

    [_bgScrollView addSubview:homeSecondVC.view];
    
    NSLog(@"contentSize=%@",NSStringFromCGSize(_bgScrollView.contentSize) );
    
    
}

- (void) scrollEnabled:(BOOL) scrolled {
    _bgScrollView.scrollEnabled = scrolled;
}





@end
