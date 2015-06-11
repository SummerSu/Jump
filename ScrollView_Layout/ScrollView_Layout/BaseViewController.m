//
//  BaseViewController.m
//  HNAir
//
//  Created by rytong on 15/4/21.
//  Copyright (c) 2015年 rytong. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController{
    UIButton *callView;
}

@synthesize titleLabel;


-(void)viewDidLoad{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIButton *backView = [UIButton buttonWithType:UIButtonTypeCustom];
    [backView setTitle:@"Back" forState:UIControlStateNormal];
    CGRect bRect = CGRectMake(0, 0,50,20);
    backView.frame = bRect;
    
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backView];
    self.navigationItem.leftBarButtonItem = backButtonItem;
    [(UIButton *)(backButtonItem.customView) addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *homeView = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect hRect = CGRectMake(0, 0,50,20);
    homeView.frame = hRect;
    [homeView setTitle:@"Home" forState:UIControlStateNormal];
    UIBarButtonItem *homeButtonItem = [[UIBarButtonItem alloc] initWithCustomView:homeView];
    
    callView = [UIButton buttonWithType:UIButtonTypeCustom];    
    CGRect hRect1= CGRectMake(258,10, 50,20);
    callView.frame = hRect1;
    [callView setTitle:@"Other" forState:UIControlStateNormal];
    [callView addTarget:self action:@selector(doTheCall) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *callButtonItem_ = [[UIBarButtonItem alloc] initWithCustomView:callView];
    
    self.navigationItem.rightBarButtonItems = @[homeButtonItem,callButtonItem_];

    [(UIButton *)(homeButtonItem.customView) addTarget:self action:@selector(homeAction:) forControlEvents:UIControlEventTouchUpInside];
   
    
    // 改变title
    if (!titleLabel) {
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 30)];
        titleLabel.font = [UIFont boldSystemFontOfSize:18];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.textAlignment = UITextAlignmentCenter;
        self.navigationItem.titleView = titleLabel;
    }

}

// 改变导航栏标题
- (void) changeBarTitleWithString:(NSString *) title{
    if (!title || title.length == 0) {
        titleLabel.text = nil;
    } else if (titleLabel) {
        titleLabel.text = title;
        //        CGSize size = [title sizeWithFont:titleLabel_.font];
        //        if (size.width > 109) {
        //            titleLabel_.font = [UIFont systemFontOfSize:13];
        //        } else {
        //            titleLabel_.font = [UIFont systemFontOfSize:18];
        //        }
        int count =[self convertChineseLengthToInt:title];
        if (count > 6) {
            if (IS_IPHONE6_PLUS || IS_IPHONE6) {
                titleLabel.font = [UIFont systemFontOfSize:15];
            }else{
                titleLabel.font = [UIFont systemFontOfSize:13];
            }
        }else {
            titleLabel.font = [UIFont systemFontOfSize:18];
        }
        
    }
}

-  (int)convertChineseLengthToInt:(NSString*)string {
    
    int strLength = 0;
    char* p = (char*)[string cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[string lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
        if (*p) {
            p++;
            strLength++;
        }
        else {
            p++;
        }
    }
    return (strLength+1)/2;
}


- (void)setStatusColor:(UIColor *)color{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, -20, SCREEN_WIDTH, 20)];
    if (color) {
        view.backgroundColor=color;
    }else{
        view.backgroundColor=[UIColor redColor];
    }
    [self.navigationController.navigationBar addSubview:view];
}




-(void)backAction:(id)sender{
    
}
-(void)doTheCall{
    
}
-(void)homeAction:(id)sender{
    
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
