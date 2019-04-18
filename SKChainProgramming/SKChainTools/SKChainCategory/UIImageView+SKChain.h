//
//  UIImageView+SKChain.h
//  SKChainProgramming
//
//  Created by shangkun on 2018/10/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface UIImageView (SKChain)

+ (instancetype)imageViewWith:(void(^)(UIImageView *imageView))initblock;

@property(nonatomic, copy, readonly) UIImageView * (^image_)(UIImage *image);

@property(nonatomic, copy, readonly) UIImageView * (^imageName_)(NSString *imageName);

@property(nonatomic, copy, readonly) UIImageView * (^opaque_)(BOOL opaque);

@property(nonatomic, copy, readonly) UIImageView * (^maskView_)(UIView *mask);

@property(nonatomic, copy, readonly) UIImageView * (^frame_)(CGRect frame);

@property(nonatomic, copy, readonly) UIImageView * (^hidden_)(BOOL hidden);

@property(nonatomic, copy, readonly) UIImageView * (^tag_)(NSInteger tag);

@property(nonatomic, copy, readonly) UIImageView * (^bounds_)(CGRect bounds);

@property(nonatomic, copy, readonly) UIImageView * (^alpha_)(CGFloat alpha);

@property(nonatomic, copy, readonly) UIImageView * (^tintColor_)(UIColor * tintColor);

@property(nonatomic, copy, readonly) UIImageView * (^backgroundColor_)(UIColor * backgroundColor);

@property(nonatomic, copy, readonly) UILabel *(^backgroundColorHexStr_)(NSString * colorHex);

@property(nonatomic, copy, readonly) UIImageView * (^autoresizesSubviews_)(BOOL autoresizesSubviews);

@property(nonatomic, copy, readonly) UIImageView * (^clipsToBounds_)(BOOL clipsToBounds);

@property(nonatomic, copy, readonly) UIImageView * (^transform_)(CGAffineTransform transform);

@property(nonatomic, copy, readonly) UIImageView * (^userInteractionEnabled_)(BOOL userInteractionEnabled);

@property(nonatomic, copy, readonly) UIImageView * (^exclusiveTouch_)(BOOL exclusiveTouch);

@property(nonatomic, copy, readonly) UIImageView * (^multipleTouchEnabled_)(BOOL multipleTouchEnabled);

@property(nonatomic, copy, readonly) UIImageView * (^contentMode_)(UIViewContentMode contentMode);

@end

