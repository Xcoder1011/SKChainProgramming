//
//  UIButton+SKChain.h
//  SKCameraDemo
//
//  Created by KUN on 17/5/25.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SKChain)

@property(nonatomic, copy, readonly) UIButton *(^frame_)(CGRect frame);

@property(nonatomic, copy, readonly) UIButton *(^title_)(NSString *title);

@property(nonatomic, copy, readonly) UIButton *(^color_)(UIColor *color);

@property(nonatomic, copy, readonly) UIButton *(^backgroundColor_)(UIColor *color);

@property(nonatomic, copy, readonly) UIButton *(^font_)(UIFont *font);

@property(nonatomic, copy, readonly) UIButton *(^imageName_)(NSString *imageName);

@property(nonatomic, copy, readonly) UIButton *(^hightlighImageName_)(NSString *hightlighImageName);

@property(nonatomic, copy, readonly) UIButton *(^selectImageName_)(NSString *selectImageName);

@property(nonatomic, copy, readonly) UIButton *(^conerRadius_)(CGFloat radius);

@property(nonatomic, copy, readonly) UIButton *(^target_and_Action_)(id target , SEL action);

@property(nonatomic, copy, readonly) UIButton *(^clickAction_)(void(^clickAction)(UIButton *btn));

+ (instancetype)buttonWith:(void(^)(UIButton *btn))initblock;


@end
