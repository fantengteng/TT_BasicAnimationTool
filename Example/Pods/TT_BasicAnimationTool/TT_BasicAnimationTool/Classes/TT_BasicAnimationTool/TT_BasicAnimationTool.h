//
//  TT_BasicAnimationTool.h
//  TT_AnimationTool
//
//  Created by linlin dang on 2018/10/23.
//  Copyright © 2018 FTT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TT_BasicAnimationConfig.h"
NS_ASSUME_NONNULL_BEGIN

@interface TT_BasicAnimationTool : NSObject


/**
 沿着坐标系重复旋转
 
 @param layer CALayer
 @param duration 动画执行时间
 @param rotation 坐标系（x,y,z）
 */
+ (void)animation_addRotationlayer:(CALayer *)layer
                          duration:(float)duration
                          rotation:(NSString *)rotation
                  animationkeypath:(NSString *)animationkeypath;
/**
 沿着坐标系旋转
 
 @param layer 视图
 @param duration 动画执行时间
 @param rotation 坐标系（x,y,z）
 @param repeatCount 动画执行次数 LONG_MAX 无限
 @param autoreverses 动画结束时是否执行逆动画 默认NO
 @param fromValue 起点
 @param timingFunction 用来设置某一段时间内，动画执行的方式
 @param toValue 终点
 */
+ (void)animation_addRotationlayer:(CALayer *)layer
                          duration:(float)duration
                          rotation:(NSString *)rotation
                       repeatCount:(NSInteger)repeatCount
                      autoreverses:(BOOL)autoreverses
                         fromValue:(id)fromValue
                           toValue:(id)toValue
                    timingFunction:(CAMediaTimingFunctionName)timingFunction
                  animationkeypath:(NSString *)animationkeypath ;

/**
 暂停动画

 @param layer CAlayer
 */
+ (void)animation_pasuselayer:(CALayer *)layer;


/**
 恢复动画

 @param layer CAlayer
 */
+ (void)animation_resumelayer:(CALayer *)layer;

@end

NS_ASSUME_NONNULL_END
