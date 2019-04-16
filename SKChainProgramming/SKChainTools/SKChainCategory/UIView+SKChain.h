//
//  UIView+SKChain.h
//  SKCameraDemo
//
//  Created by KUN on 17/5/25.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SKChain)

@property(nonatomic, copy, readonly) UIView * (^opaque_)(BOOL opaque);

@property(nonatomic, copy, readonly) UIView * (^maskView_)(UIView *mask);

@property(nonatomic, copy, readonly) UIView * (^frame_)(CGRect frame);

@property(nonatomic, copy, readonly) UIView * (^hidden_)(BOOL hidden);

@property(nonatomic, copy, readonly) UIView * (^tag_)(NSInteger tag);

@property(nonatomic, copy, readonly) UIView * (^bounds_)(CGRect bounds);

@property(nonatomic, copy, readonly) UIView * (^alpha_)(CGFloat alpha);

@property(nonatomic, copy, readonly) UIView * (^tintColor_)(UIColor * tintColor);

@property(nonatomic, copy, readonly) UIView * (^backgroundColor_)(UIColor * backgroundColor);

@property(nonatomic, copy, readonly) UILabel *(^backgroundColorHexStr_)(NSString * colorHex);

@property(nonatomic, copy, readonly) UIView * (^autoresizesSubviews_)(BOOL autoresizesSubviews);

@property(nonatomic, copy, readonly) UIView * (^clipsToBounds_)(BOOL clipsToBounds);

@property(nonatomic, copy, readonly) UIView * (^transform_)(CGAffineTransform transform);

@property(nonatomic, copy, readonly) UIView * (^userInteractionEnabled_)(BOOL userInteractionEnabled);

@property(nonatomic, copy, readonly) UIView * (^exclusiveTouch_)(BOOL exclusiveTouch);

@property(nonatomic, copy, readonly) UIView * (^multipleTouchEnabled_)(BOOL multipleTouchEnabled);

@property(nonatomic, copy, readonly) UIView * (^contentMode_)(UIViewContentMode contentMode);

@end
