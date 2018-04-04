//
//  UIView+SKChain.m
//  SKCameraDemo
//
//  Created by KUN on 17/5/25.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "UIView+SKChain.h"

@implementation UIView (SKChain)

- (UIView * (^)(BOOL))opaque_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL opaque) {
        
        weakself.opaque = opaque;
        
        return weakself;
    };
}

- (UIView *(^)(UIView *))maskView_ {
    
    __weak typeof(self) weakself = self;

    return ^ id (UIView *mask) {
      
        weakself.maskView = mask;
        
        return weakself;
    };
}

- (UIView *(^)(CGRect))frame_ {
    
    __weak typeof(self) weakself = self;

    return ^ id (CGRect frame) {
        
        weakself.frame = frame;
        
        return weakself;
    };
}

- (UIView *(^)(BOOL))hidden_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL hidden) {
        
        weakself.hidden = hidden;
        
        return weakself;
    };
}

- (UIView *(^)(NSInteger))tag_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (NSInteger tag) {
        
        weakself.tag = tag;
        
        return weakself;
    };
}

- (UIView *(^)(CGRect))bounds_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGRect bounds) {
        
        weakself.bounds = bounds;
        
        return weakself;
    };
}

- (UIView *(^)(CGFloat))alpha_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGFloat alpha) {
        
        weakself.alpha = alpha;
        
        return weakself;
    };
}


- (UIView *(^)(UIColor *))tintColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIColor * tintColor) {
        
        weakself.tintColor = tintColor;
        
        return weakself;
    };
}


- (UIView *(^)(UIColor *))backgroundColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIColor * backgroundColor) {
        
        weakself.backgroundColor = backgroundColor;
        
        return weakself;
    };
}


- (UIView *(^)(BOOL))autoresizesSubviews_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL autoresizesSubviews) {
        
        weakself.autoresizesSubviews = autoresizesSubviews;
        
        return weakself;
    };
}

- (UIView *(^)(BOOL))clipsToBounds_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL clipsToBounds) {
        
        weakself.clipsToBounds = clipsToBounds;
        
        return weakself;
    };
}

- (UIView *(^)(CGAffineTransform))transform_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGAffineTransform transform) {
        
        weakself.transform = transform;
        
        return weakself;
    };
}

- (UIView *(^)(BOOL))userInteractionEnabled_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL userInteractionEnabled) {
        
        weakself.userInteractionEnabled = userInteractionEnabled;
        
        return weakself;
    };
}


- (UIView *(^)(BOOL))exclusiveTouch_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL exclusiveTouch) {
        
        weakself.exclusiveTouch = exclusiveTouch;
        
        return weakself;
    };
}

- (UIView *(^)(BOOL))multipleTouchEnabled_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL multipleTouchEnabled) {
        
        weakself.multipleTouchEnabled = multipleTouchEnabled;
        
        return weakself;
    };
}

- (UIView *(^)(UIViewContentMode))contentMode_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIViewContentMode contentMode) {
        
        weakself.contentMode = contentMode;
        
        return weakself;
    };
}

@end
