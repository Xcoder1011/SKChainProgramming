//
//  UILabel+SKChain.m
//  SKChainProgramming
//
//  Created by shangkun on 2018/10/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import "UILabel+SKChain.h"
#import "HexColors.h"

@implementation UILabel (SKChain)

+ (instancetype)labelWith:(void(^)(UILabel *label))initblock {
    
    UILabel *label1 = [[UILabel alloc] init];
    if (initblock) {
        initblock(label1);
    }
    return label1;
}

- (void (^)(NSString *text))getText {
    
    void (^textBlock)(NSString *) = ^(NSString *text) {
        
        [self setText:text];
    };
    
    return textBlock;
}

- (UILabel *(^)(CGRect))frame_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (CGRect rect) {
        
        [weakself setFrame:rect];
        
        return weakself;
    };
}

- (UILabel *(^)(NSString *))text_ {
    
    __weak typeof(self) weakself = self;
    
    UILabel *(^setText)(NSString *) = ^(NSString *text) {
        
        [weakself setText:text];
        
        return weakself;
    };
    return setText;
}

- (UILabel *(^)(UIColor *))textColor_ {
    
    __weak typeof(self) weakself = self;

    return ^id(UIColor *textColor) {
      
        [weakself setTextColor:textColor];
        
        return weakself;
    };
}

- (UILabel *(^)(NSString *))textColorHexStr_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (NSString *colorHex) {
        
        weakself.textColor_([UIColor colorWithHexString:colorHex]);
        
        return weakself;
    };
}

- (UILabel *(^)(UIFont *))font_ {
    
    __weak typeof(self) weakself = self;

    return ^id (UIFont *font) {
        
        weakself.font = font;
        
        weakself.textAlignment = NSTextAlignmentLeft;
        
        return weakself;
    };
}

- (UILabel *(^)(CGFloat))fontSize {
    
    __weak typeof(self) weakself = self;
    
    return ^id (CGFloat fontSize) {
        
        weakself.font_([UIFont systemFontOfSize:fontSize]);
        
        return weakself;
    };
}

- (UILabel *(^)(NSString *))backgroundColorHexStr_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (NSString *colorHex) {
        
        weakself.backgroundColor_([UIColor colorWithHexString:colorHex]);
        
        return weakself;
    };
}

- (UILabel *(^)(NSTextAlignment))textAlignment_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id (NSTextAlignment alignment) {
        
        weakself.textAlignment = alignment;
        
        return weakself;
    };
}

- (UILabel *(^)(CGFloat))conerRadius_ {
    
    __weak typeof(self) weakself = self;
    
    return ^id(CGFloat coner) {
        
        weakself.clipsToBounds = YES;
        
        weakself.layer.cornerRadius = coner;
        
        return weakself;
    };
}

- (UILabel * (^)(BOOL))opaque_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL opaque) {
        
        weakself.opaque = opaque;
        
        return weakself;
    };
}

- (UILabel *(^)(BOOL))hidden_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL hidden) {
        
        weakself.hidden = hidden;
        
        return weakself;
    };
}

- (UILabel *(^)(NSInteger))tag_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (NSInteger tag) {
        
        weakself.tag = tag;
        
        return weakself;
    };
}

- (UILabel *(^)(CGRect))bounds_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGRect bounds) {
        
        weakself.bounds = bounds;
        
        return weakself;
    };
}

- (UILabel *(^)(CGFloat))alpha_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGFloat alpha) {
        
        weakself.alpha = alpha;
        
        return weakself;
    };
}

- (UILabel *(^)(UIColor *))tintColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIColor * tintColor) {
        
        weakself.tintColor = tintColor;
        
        return weakself;
    };
}


- (UILabel *(^)(UIColor *))backgroundColor_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIColor * backgroundColor) {
        
        weakself.backgroundColor = backgroundColor;
        
        return weakself;
    };
}


- (UILabel *(^)(BOOL))autoresizesSubviews_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL autoresizesSubviews) {
        
        weakself.autoresizesSubviews = autoresizesSubviews;
        
        return weakself;
    };
}

- (UILabel *(^)(BOOL))clipsToBounds_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL clipsToBounds) {
        
        weakself.clipsToBounds = clipsToBounds;
        
        return weakself;
    };
}

- (UILabel *(^)(CGAffineTransform))transform_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (CGAffineTransform transform) {
        
        weakself.transform = transform;
        
        return weakself;
    };
}

- (UILabel *(^)(BOOL))userInteractionEnabled_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL userInteractionEnabled) {
        
        weakself.userInteractionEnabled = userInteractionEnabled;
        
        return weakself;
    };
}


- (UILabel *(^)(BOOL))exclusiveTouch_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL exclusiveTouch) {
        
        weakself.exclusiveTouch = exclusiveTouch;
        
        return weakself;
    };
}

- (UILabel *(^)(BOOL))multipleTouchEnabled_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (BOOL multipleTouchEnabled) {
        
        weakself.multipleTouchEnabled = multipleTouchEnabled;
        
        return weakself;
    };
}

- (UILabel *(^)(UIViewContentMode))contentMode_ {
    
    __weak typeof(self) weakself = self;
    
    return ^ id (UIViewContentMode contentMode) {
        
        weakself.contentMode = contentMode;
        
        return weakself;
    };
}


@end
