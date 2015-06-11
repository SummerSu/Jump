//
//  HomeViewController.m
//  ScrollView_Layout
//
//  Created by sunsu on 15/6/8.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeView.h"
@interface HomeViewController ()



@end

@implementation HomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _homeView = [[HomeView alloc]initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.navigationController.view addSubview:_homeView];
    self.view.backgroundColor = [UIColor yellowColor];
    [self changeBarTitleWithString:@"首页"];
    
    
}

-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [_homeView removeFromSuperview];
    
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=NO;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    if (_homeView) {
        [self.navigationController.view addSubview:_homeView];
    }

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
//    if (_homeView) {
//        [self.navigationController.view addSubview:_homeView];
//    }
}

-(void)backAction:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)doTheCall{
    
}
-(void)homeAction:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
