//
//  ViewController.m
//  ScrollView_Layout
//
//  Created by sunsu on 15/6/8.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//



#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *clickBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 60, 30)];
    clickBtn.backgroundColor = [UIColor yellowColor];
    [clickBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [clickBtn setTitle:@"入口" forState:UIControlStateNormal];
    [clickBtn addTarget:self action:@selector(goNextVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
    NSLog(@"-===-");
    self.view.backgroundColor = [UIColor cyanColor];
    self.navigationController.navigationBarHidden = YES;

}

-(void)goNextVC{
    HomeViewController * vc = [[HomeViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}








@end
