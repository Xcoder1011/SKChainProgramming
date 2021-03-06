//
//  ViewController.m
//  SKChainProgramming
//
//  Created by KUN on 2018/3/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import "ViewController.h"
#import "SKChainHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [UILabel labelWith:^(UILabel *label) {
        label
        .text_(@"SKChain")
        .textColorHexStr_(@"999999")
        .frame_(CGRectMake(30, 90, 120, 30))
        .textAlignment_(NSTextAlignmentCenter)
        .backgroundColorHexStr_(@"333333");
    }];
    [self.view addSubview:label];
    
    UIButton *btn = [UIButton buttonWith:^(UIButton *btn) {
        btn
        .frame_(CGRectMake(30, 200, 100, 40))
        .backgroundColor_([UIColor redColor])
        .conerRadius_(20)
        .title_(@"ADD")
        .titleForState_(@"has add", UIControlStateHighlighted)
        .target_and_Action_(self, @selector(pressBtn1:))
        .clickAction_(^(UIButton *btn) {
            NSLog(@"pressBtn %zd",btn.tag);
        });
    }];
    [self.view addSubview:btn];
    
    UIImageView *imageView = [UIImageView imageViewWith:^(UIImageView *imageView) {
        imageView
        .frame_(CGRectMake(30, 300, 200, 90))
        .backgroundColor_([UIColor blueColor]);
    }];
    [self.view addSubview:imageView];
}

-(void)pressBtn1:(UIButton *)btn {
  
    NSLog(@"pressBtn1 %zd",btn.tag);
}

@end
