//
//  SKUIViewMaker.m
//  SKChainProgramming
//
//  Created by KUN on 2018/3/20.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import "SKUIViewMaker.h"

@interface SKUIViewMaker ()

@property (nonatomic, weak) UIView *view;

@end

@implementation SKUIViewMaker

- (id)initWithView:(UIView *)view {
    self = [super init];
    if (!self) return nil;
    
    self.view = view;
    return self;
}

- (SKUIViewMaker *(^)(CGRect))frame {
    
    SKUIViewMaker *(^setFrameBlock)(CGRect) = ^(CGRect frame) {
        
        [_view setFrame:frame];
        
        return self;
    };
    return setFrameBlock;
}

- (SKUIViewMaker *(^)(BOOL))opaque {
    
    SKUIViewMaker * (^setOpaqueBlock)(BOOL) = ^(BOOL opaque) {
        
        [_view setOpaque:opaque];
        
        return self;
    };
    
    return setOpaqueBlock;
}

- (SKUIViewMaker *(^)(NSInteger))tag {
    
    return ^ SKUIViewMaker *(NSInteger tag){
        
        [_view setTag:tag];
        
        return self;
    };
}

- (SKUIViewMaker *(^)(BOOL))insetsLayoutMarginsFromSafeArea {
    
    return ^ SKUIViewMaker * (BOOL insetsLayoutMarginsFromSafeArea) {
        
        [_view setInsetsLayoutMarginsFromSafeArea:insetsLayoutMarginsFromSafeArea];
        
        return self;
    };
}

- (SKUIViewMaker *(^)(UIView *))maskView {
    
    return ^ SKUIViewMaker * (UIView *maskView) {
        
        [_view setMaskView:maskView];
        
        return self;
    };
}

- (SKUIViewMaker *(^)(BOOL))hidden {
    
    return ^ SKUIViewMaker *(BOOL hidden) {
        
        [_view setHidden:hidden];
        
        return self;
    };
}

- (SKUIViewMaker *(^)(CGRect))bounds {
    
    return ^ SKUIViewMaker *(CGRect bounds) {
        
        [_view setBounds:bounds];
        
        return self;
    };
}

- (SKUIViewMaker *(^)(CGFloat))alpha {
    
    return ^ SKUIViewMaker * (CGFloat alpha) {
        
        [_view setAlpha:alpha];
        
        return self;
    };
}

- (SKUIViewMaker *(^)(UIColor *))backgroundColor {
    
    return ^ SKUIViewMaker * (UIColor *backgroundColor) {
        
        [_view setBackgroundColor:backgroundColor];
        
        return self;
    };
}


@end
