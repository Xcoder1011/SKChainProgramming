//
//  UIImageView+SKChain.m
//  SKChainProgramming
//
//  Created by shangkun on 2018/10/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import "UIImageView+SKChain.h"
#import "Colours.h"

@implementation UIImageView (SKChain)

+ (instancetype)imageViewWith:(void (^)(UIImageView *imageView))initblock {
    
    UIImageView *imageV = [[UIImageView alloc] init];
    if (initblock) {
        initblock(imageV);
    }
    return imageV;
}

- (UIImageView *(^)(UIImage *))image_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIImage *image) {
        
        weakself.image = image;
        
        return weakself;
    };
}

- (UIImageView *(^)(NSString *))imageName_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (NSString *imageName) {
        
        [weakself setImage:[UIImage imageNamed:imageName]];
        
        return weakself;
    };
}

- (UIImageView * (^)(BOOL))opaque_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL opaque) {
        
        weakself.opaque = opaque;
        
        return weakself;
    };
}

- (UIImageView *(^)(UIView *))maskView_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIView *mask) {
        
        weakself.maskView = mask;
        
        return weakself;
    };
}

- (UIImageView *(^)(CGRect))frame_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGRect frame) {
        
        weakself.frame = frame;
        
        return weakself;
    };
}

- (UIImageView *(^)(BOOL))hidden_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL hidden) {
        
        weakself.hidden = hidden;
        
        return weakself;
    };
}

- (UIImageView *(^)(NSInteger))tag_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (NSInteger tag) {
        
        weakself.tag = tag;
        
        return weakself;
    };
}

- (UIImageView *(^)(CGRect))bounds_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGRect bounds) {
        
        weakself.bounds = bounds;
        
        return weakself;
    };
}

- (UIImageView *(^)(CGFloat))alpha_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGFloat alpha) {
        
        weakself.alpha = alpha;
        
        return weakself;
    };
}

- (UIImageView *(^)(UIColor *))tintColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIColor * tintColor) {
        
        weakself.tintColor = tintColor;
        
        return weakself;
    };
}

- (UIImageView *(^)(UIColor *))backgroundColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIColor * backgroundColor) {
        
        weakself.backgroundColor = backgroundColor;
        
        return weakself;
    };
}

- (UILabel *(^)(NSString *))backgroundColorHexStr_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (NSString *colorHex) {
        
        weakself.backgroundColor_([UIColor colorFromHexString:colorHex]);
        
        return weakself;
    };
}

- (UIImageView *(^)(BOOL))autoresizesSubviews_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL autoresizesSubviews) {
        
        weakself.autoresizesSubviews = autoresizesSubviews;
        
        return weakself;
    };
}

- (UIImageView *(^)(BOOL))clipsToBounds_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL clipsToBounds) {
        
        weakself.clipsToBounds = clipsToBounds;
        
        return weakself;
    };
}

- (UIImageView *(^)(CGAffineTransform))transform_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGAffineTransform transform) {
        
        weakself.transform = transform;
        
        return weakself;
    };
}

- (UIImageView *(^)(BOOL))userInteractionEnabled_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL userInteractionEnabled) {
        
        weakself.userInteractionEnabled = userInteractionEnabled;
        
        return weakself;
    };
}

- (UIImageView *(^)(BOOL))exclusiveTouch_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL exclusiveTouch) {
        
        weakself.exclusiveTouch = exclusiveTouch;
        
        return weakself;
    };
}

- (UIImageView *(^)(BOOL))multipleTouchEnabled_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL multipleTouchEnabled) {
        
        weakself.multipleTouchEnabled = multipleTouchEnabled;
        
        return weakself;
    };
}

- (UIImageView *(^)(UIViewContentMode))contentMode_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIViewContentMode contentMode) {
        
        weakself.contentMode = contentMode;
        
        return weakself;
    };
}

@end
