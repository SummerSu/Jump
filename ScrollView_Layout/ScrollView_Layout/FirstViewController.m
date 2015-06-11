//
//  FirstViewController.m
//  ScrollView_Layout
//
//  Created by sunsu on 15/6/10.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import "FirstViewController.h"
#import "HomeViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.view.backgroundColor = RGBCOLOR(81, 111, 91);
    [self changeBarTitleWithString:@"First Page"];
}



-(void)backAction:(id)sender{
    
      [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)doTheCall{
    SecondViewController * svc = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
    
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
