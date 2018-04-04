//
//  ViewController.m
//  SKChainProgramming
//
//  Created by KUN on 2018/3/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SKChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [UIButton buttonWith:^(UIButton *btn) {
        btn
        .frame_(CGRectMake(0, 200, 100, 40))
        .backgroundColor_([UIColor redColor])
        .title_(@"ADD")
        .target_and_Action_(self, @selector(pressBtn1:))
        .clickAction_(^(UIButton *btn) {
            
            NSLog(@"pressBtn %ld",btn.tag);
        });
    }];
    
    [self.view addSubview:btn];
}


-(void)pressBtn1:(UIButton *)btn {
  
    NSLog(@"pressBtn1 %ld",btn.tag);
}


@end
