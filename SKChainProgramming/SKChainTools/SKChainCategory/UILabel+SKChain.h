//
//  UILabel+SKChain.h
//  SKChainProgramming
//
//  Created by shangkun on 2018/10/19.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SKChain)

+ (instancetype)labelWith:(void(^)(UILabel *label))initblock;

@property(nonatomic, copy, readonly) void (^getText)(NSString *text) ;

@property(nonatomic, copy, readonly) UILabel *(^frame_)(CGRect frame);

@property(nonatomic, copy, readonly) UILabel *(^text_)(NSString *);

@property(nonatomic, copy, readonly) UILabel *(^textColor_)(UIColor *);

@property(nonatomic, copy, readonly) UILabel *(^textColorHexStr_)(NSString *);

@property(nonatomic, copy, readonly) UILabel *(^font_)(UIFont *font);
// only for system font
@property(nonatomic, copy, readonly) UILabel *(^fontSize)(CGFloat fontSize);

@property(nonatomic, copy, readonly) UILabel *(^backgroundColorHexStr_)(NSString *);

@property(nonatomic, copy, readonly) UILabel *(^textAlignment_)(NSTextAlignment);

@property(nonatomic, copy, readonly) UILabel *(^conerRadius_)(CGFloat radius);

@property(nonatomic, copy, readonly) UILabel * (^opaque_)(BOOL opaque);

@property(nonatomic, copy, readonly) UILabel * (^hidden_)(BOOL hidden);

@property(nonatomic, copy, readonly) UILabel * (^tag_)(NSInteger tag);

@property(nonatomic, copy, readonly) UILabel * (^bounds_)(CGRect bounds);

@property(nonatomic, copy, readonly) UILabel * (^alpha_)(CGFloat alpha);

@property(nonatomic, copy, readonly) UILabel * (^tintColor_)(UIColor * tintColor);

@property(nonatomic, copy, readonly) UILabel * (^backgroundColor_)(UIColor * backgroundColor);

@property(nonatomic, copy, readonly) UILabel * (^autoresizesSubviews_)(BOOL autoresizesSubviews);

@property(nonatomic, copy, readonly) UILabel * (^clipsToBounds_)(BOOL clipsToBounds);

@property(nonatomic, copy, readonly) UILabel * (^transform_)(CGAffineTransform transform);

@property(nonatomic, copy, readonly) UILabel * (^userInteractionEnabled_)(BOOL userInteractionEnabled);

@property(nonatomic, copy, readonly) UILabel * (^exclusiveTouch_)(BOOL exclusiveTouch);

@property(nonatomic, copy, readonly) UILabel * (^multipleTouchEnabled_)(BOOL multipleTouchEnabled);

@property(nonatomic, copy, readonly) UILabel * (^contentMode_)(UIViewContentMode contentMode);

@end
