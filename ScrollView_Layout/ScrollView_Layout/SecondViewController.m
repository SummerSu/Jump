//
//  SecondViewController.m
//  ScrollView_Layout
//
//  Created by sunsu on 15/6/10.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import "SecondViewController.h"
#import "HomeViewController.h"
#import "HomeView.h"
#import "HomeSecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.view.backgroundColor = RGBCOLOR(131, 81,21);
    [self changeBarTitleWithString:@"Second Page"];
    
    
}

-(void)backToRootView{
    
}



-(void)backAction:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)doTheCall{
//    HomeSecondViewController * homeSecondVC = [[HomeSecondViewController alloc]init];
//    [self.navigationController pushViewController:homeSecondVC animated:YES];
}
-(void)homeAction:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
