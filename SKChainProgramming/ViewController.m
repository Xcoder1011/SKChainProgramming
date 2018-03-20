//
//  ViewController.m
//  SKChainProgramming
//
//  Created by KUN on 2018/3/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import "ViewController.h"
#import "SKButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    SKButton *btn = [SKButton buttonWith:^(SKButton *btn) {
        btn
        .frame_(CGRectMake(0, 200, 100, 40))
        .backgroundColor_([UIColor whiteColor])
        .title_(@"ADD")
        .clickAction_(^(UIButton *btn) {
            //
        })
        .target_and_Action_(self, @selector(pressBtn:));
    }];

    
    [self.view addSubview:btn];
}


-(void)pressBtn:(UIButton *)btn {
    
    
}


@end
