//
//  HomeSecondViewController.m
//  ScrollView_Layout
//
//  Created by sunsu on 15/6/11.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import "HomeSecondViewController.h"
#import "HomeSecondeView.h"
@interface HomeSecondViewController ()

@end

@implementation HomeSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HomeSecondeView * homeSecondView = [[HomeSecondeView alloc]init];
    self.navigationController.view = homeSecondView;
    homeSecondView.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
