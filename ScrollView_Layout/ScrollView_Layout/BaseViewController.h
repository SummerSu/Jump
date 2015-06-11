//
//  BaseViewController.h
//  HNAir
//
//  Created by rytong on 15/4/21.
//  Copyright (c) 2015年 rytong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property(nonatomic, retain) UILabel *titleLabel;

- (void)backAction:(id)sender;
- (void)doTheCall;
- (void)homeAction:(id)sender;
- (void)setStatusColor:(UIColor *)color;
- (void) changeBarTitleWithString:(NSString *) title;
@end
