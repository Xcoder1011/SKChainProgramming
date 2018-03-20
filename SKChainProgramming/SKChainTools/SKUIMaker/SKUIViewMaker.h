//
//  SKUIViewMaker.h
//  SKChainProgramming
//
//  Created by KUN on 2018/3/20.
//  Copyright © 2018年 wushangkun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SKUIViewMaker : NSObject

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^frame)(CGRect frame);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^opaque)(BOOL opaque);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^tag)(NSInteger tag);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^insetsLayoutMarginsFromSafeArea)(BOOL insetsLayoutMarginsFromSafeArea);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^maskView)(UIView *maskView);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^hidden)(BOOL hidden);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^bounds)(CGRect bounds);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^alpha)(CGFloat alpha);

@property (nonatomic, copy, readonly) SKUIViewMaker  *(^backgroundColor)(UIColor *backgroundColor);

- (SKUIViewMaker *(^)(NSArray * interactions))mInteractions;

- (SKUIViewMaker *(^)(NSDirectionalEdgeInsets directionalLayoutMargins))mDirectionallayoutmargins;

- (SKUIViewMaker *(^)(BOOL autoresizesSubviews))mAutoresizessubviews;

- (SKUIViewMaker *(^)(BOOL clipsToBounds))mClipstobounds;

- (SKUIViewMaker *(^)(UIColor * backgroundColor))mBackgroundcolor;

- (SKUIViewMaker *(^)(NSArray * motionEffects))mMotioneffects;

- (SKUIViewMaker *(^)(BOOL accessibilityIgnoresInvertColors))mAccessibilityignoresinvertcolors;

- (SKUIViewMaker *(^)(CGAffineTransform transform))mTransform;

- (SKUIViewMaker *(^)(BOOL userInteractionEnabled))mUserinteractionenabled;

- (SKUIViewMaker *(^)(UIEdgeInsets layoutMargins))mLayoutmargins;

- (SKUIViewMaker *(^)(BOOL exclusiveTouch))mExclusivetouch;

- (SKUIViewMaker *(^)(UIColor * tintColor))mTintcolor;

- (SKUIViewMaker *(^)(BOOL preservesSuperviewLayoutMargins))mPreservessuperviewlayoutmargins;

- (SKUIViewMaker *(^)(BOOL clearsContextBeforeDrawing))mClearscontextbeforedrawing;

- (SKUIViewMaker *(^)(UIViewContentMode contentMode))mContentmode;

- (SKUIViewMaker *(^)(BOOL translatesAutoresizingMaskIntoConstraints))mTranslatesautoresizingmaskintoconstraints;

- (SKUIViewMaker *(^)(CGRect contentStretch))mContentstretch;

- (SKUIViewMaker *(^)(NSArray * gestureRecognizers))mGesturerecognizers;

- (SKUIViewMaker *(^)(UIViewTintAdjustmentMode tintAdjustmentMode))mTintadjustmentmode;

- (SKUIViewMaker *(^)(BOOL multipleTouchEnabled))mMultipletouchenabled;

- (SKUIViewMaker *(^)(UIViewAutoresizing autoresizingMask))mAutoresizingmask;


- (SKUIViewMaker *(^)(CGPoint center))mCenter;

- (SKUIViewMaker *(^)(UISemanticContentAttribute semanticContentAttribute))mSemanticcontentattribute;

- (SKUIViewMaker *(^)(CGFloat contentScaleFactor))mContentscalefactor;

- (id)initWithView:(UIView *)view;

//- (SKUIViewMaker * (^)(BOOL opaque))opaque;

//- (SKUIViewMaker *(^)(CGRect frame))frame;


@end
