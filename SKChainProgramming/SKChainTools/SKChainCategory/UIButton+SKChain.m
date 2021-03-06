//
//  UIButton+SKChain.m
//  SKCameraDemo
//
//  Created by KUN on 17/5/25.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "UIButton+SKChain.h"
#import <objc/runtime.h>
#import "Colours.h"

@interface UIButton ()

@property(nonatomic, copy) void(^clickAction)(UIButton *btn);

@end

@implementation UIButton (SKChain)

+ (instancetype)buttonWith:(void (^)(UIButton *btn))initblock {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    if (initblock) {
        initblock(btn);
    }
    return btn;
}

- (UIButton *(^)(CGRect))frame_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (CGRect rect) {
        
        weakself.frame = rect;
        
        return weakself;
    };
}

- (UIButton *(^)(NSString *))title_ {
    
    __weak typeof(self) weakself = self;
    
      UIButton * (^setTitle)(NSString *) = ^(NSString *str) {
        
        [weakself setTitle:str forState:UIControlStateNormal];
        
        return weakself;
    };
    
    return setTitle;
}

- (UIButton *(^)(UIColor *))color_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(UIColor *color) {
        
        [weakself setTitleColor:color forState:UIControlStateNormal];
        
        return weakself;
    };
}

- (UIButton *(^)(NSString *, UIControlState))titleForState_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(NSString *title, UIControlState state) {
        
        [weakself setTitle:title forState:state];
        
        return weakself;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))colorForState_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(UIColor *color, UIControlState state) {
        
        [weakself setTitleColor:color forState:state];
        
        return weakself;
    };
}

- (UIButton *(^)(UIColor *))backgroundColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(UIColor *color) {
        
        [weakself setBackgroundColor:color];
        
        UIColor *hightColor = [color darken:0.2];
        
        weakself.backgroundColorForState_(hightColor, UIControlStateHighlighted);
        
        return weakself;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))backgroundColorForState_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(UIColor *color, UIControlState state) {
        
         [weakself setBackgroundImage:[UIButton createImageWithColor:color] forState:state];
        
        return weakself;
    };
}

- (UIButton *(^)(NSString *, UIControlState))backgroundImageForState_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(NSString *name, UIControlState state) {
        
        [weakself setBackgroundImage:[UIImage imageNamed:name] forState:state];
        
        return weakself;
    };
}

- (UIButton *(^)(UIFont *))font_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (UIFont *titleFont) {
        
        weakself.titleLabel.font = titleFont;
        
        return weakself;
    };
}

- (UIButton *(^)(NSString *))imageName_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(NSString * name) {
        
        [weakself setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        
        return self;
    };
}

- (UIButton *(^)(NSString *))hightlighImageName_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(NSString * name) {
        
        [weakself setImage:[UIImage imageNamed:name] forState:UIControlStateHighlighted];
        
        return self;
    };
}

- (UIButton *(^)(NSString *))selectImageName_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(NSString * name) {
        
        [weakself setImage:[UIImage imageNamed:name] forState:UIControlStateSelected];
        
        return self;
    };
}

- (UIButton *(^)(CGFloat))conerRadius_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(CGFloat coner) {
        
        weakself.clipsToBounds = YES;
        
        weakself.layer.cornerRadius = coner;
        
        return weakself;
    };
}

- (UIButton *(^)(id, SEL))target_and_Action_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(id target , SEL action) {
        
        [weakself addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        
        return weakself;
    };
}

- (UIButton *(^)(void (^)(UIButton *)))clickAction_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(void (^clickBlock)(UIButton *btn)) {
        
        [weakself addTarget:weakself action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];

        weakself.clickAction = clickBlock;
        
        return weakself;
    };
}

- (void)setClickAction:(void (^)(UIButton *))clickAction {
    
    objc_setAssociatedObject(self,@selector(clickAction),clickAction,OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (void (^)(UIButton *))clickAction {
    
    return objc_getAssociatedObject(self, _cmd);
}

- (void)clickButton:(UIButton *)btn {
    
    if (self.clickAction) {
        
        self.clickAction(btn);
    }
}

/// UIColor 转UIImage
+ (UIImage*)createImageWithColor:(UIColor *)color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
