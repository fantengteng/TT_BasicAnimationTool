//
//  TTViewController.m
//  TT_BasicAnimationTool
//
//  Created by fantengteng on 10/23/2018.
//  Copyright (c) 2018 fantengteng. All rights reserved.
//

#import "TTViewController.h"
#import <TT_BasicAnimationTool/TT_BasicAnimationTool.h>
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
@interface TTViewController ()
@property (nonatomic, strong) UIView *squareView;
@property (nonatomic, strong) UILabel *squareLabel;
@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.squareView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 80)];
    self.squareView.backgroundColor = [UIColor cyanColor];
    self.squareView.layer.borderColor = [UIColor redColor].CGColor;
    self.squareView.center = CGPointMake(SCREEN_WIDTH/2.0, 200);
    self.squareView.layer.shadowOpacity = 0.6;
    self.squareView.layer.shadowOffset = CGSizeMake(0, 0);
    self.squareView.layer.shadowRadius = 4;
    self.squareView.layer.shadowColor = [UIColor redColor].CGColor;
    [self.view addSubview:self.squareView];
    
    self.squareLabel = [[UILabel alloc] initWithFrame:self.squareView.bounds];
    self.squareLabel.text = @"label";
    self.squareLabel.textAlignment = NSTextAlignmentCenter;
    self.squareLabel.textColor = [UIColor blackColor];
    self.squareLabel.font = [UIFont systemFontOfSize:17];
    [self.squareView addSubview:self.squareLabel];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [TT_BasicAnimationTool animation_addRotationlayer:self.squareView.layer
                                             duration:2
                                             rotation:kCACornerRadius
                                          repeatCount:1
                                         autoreverses:NO
                                            fromValue:@0
                                              toValue:@40
                                       timingFunction:kCAMediaTimingFunctionLinear
                                     animationkeypath:@"ccc"];
}

@end
