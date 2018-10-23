//
//  TT_BasicAnimationTool.m
//  TT_AnimationTool
//
//  Created by linlin dang on 2018/10/23.
//  Copyright © 2018 FTT. All rights reserved.
//

#import "TT_BasicAnimationTool.h"

@implementation TT_BasicAnimationTool

+ (void)animation_addRotationlayer:(CALayer *)layer
                          duration:(float)duration
                          rotation:(NSString *)rotation
                  animationkeypath:(NSString *)animationkeypath {
    [[self class]animation_addRotationlayer:layer
                                   duration:duration
                                   rotation:rotation
                                repeatCount:LONG_MAX
                               autoreverses:NO
                                  fromValue:@(0)
                                    toValue:@(M_PI * 2)
                             timingFunction:kCAMediaTimingFunctionLinear
                           animationkeypath:animationkeypath];
    
}


+ (void)animation_addRotationlayer:(CALayer *)layer
                          duration:(float)duration
                          rotation:(NSString *)rotation
                       repeatCount:(NSInteger)repeatCount
                      autoreverses:(BOOL)autoreverses
                         fromValue:(id)fromValue
                           toValue:(id)toValue
                    timingFunction:(CAMediaTimingFunctionName)timingFunction
                  animationkeypath:(NSString *)animationkeypath {
    CABasicAnimation *animation   = [CABasicAnimation animationWithKeyPath:rotation];
    animation.fromValue           = fromValue;
    animation.toValue             = toValue;
    animation.duration            = duration;
    animation.repeatCount         = repeatCount;
    animation.autoreverses        = autoreverses;
    animation.removedOnCompletion = NO;
    animation.fillMode            = kCAFillModeForwards;
    animation.timingFunction      = [CAMediaTimingFunction functionWithName:timingFunction];
    [layer addAnimation:animation forKey:animationkeypath];
}

+ (void)animation_pasuselayer:(CALayer *)layer {
    CFTimeInterval pauseTime = CACurrentMediaTime();
    /// 设置速度为0，t停止动画
    layer.speed = 0;
    /// 保存暂停时间，便于恢复
    layer.timeOffset = pauseTime;
}

+ (void)animation_resumelayer:(CALayer *)layer {
    /// 获取暂停时保存的时间
    CFTimeInterval pauseTime = layer.timeOffset;
    /// 设置速度
    layer.speed = 1.0;
    /// 清除开始时间
    layer.beginTime = 0.0;
    /// 计算开始时间
    CFTimeInterval beginTime = [layer convertTime:CACurrentMediaTime() fromLayer:nil] - pauseTime;
    /// 重设开始时间
    layer.beginTime = beginTime;
}

@end
