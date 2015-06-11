//
//  HomeView.h
//  HNAir
//
//  Created by rytong on 15/4/21.
//  Copyright (c) 2015年 rytong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeFirstView.h"
#import "HomeSecondeView.h"
#import "HomeViewController.h"
#import "HomeSecondViewController.h"
@interface HomeView : UIView <UIScrollViewDelegate>{

}

@property (nonatomic, strong) UIScrollView      *bgScrollView;
@property (nonatomic, strong) HomeFirstView     *firstView;
@property (nonatomic, strong) HomeSecondeView   *secondeView;



@end
