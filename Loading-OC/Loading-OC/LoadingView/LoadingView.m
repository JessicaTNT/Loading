//
//  LoadingView.m
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "LoadingView.h"
#define DOT_HEIGHT 12
#define DOT_WIDTH 12
#define R 6
@interface LoadingView()
@property (nonatomic, strong) CALayer *containerLayer;
@property (nonatomic, strong) UIView *containerView;
@end
@implementation LoadingView

- (id)initWithView:(UIView *)view{
    self = [super initWithFrame:view.bounds];
    if (self) {
    self.backgroundColor = RGB(208.0, 100.0, 101.0, 1);
        _containerView = view;
     [self initThreeDot];
    }
    return self;
}
- (void)initThreeDot{
    _containerLayer = [[CALayer alloc] init];
    _containerLayer.frame = CGRectMake(0, 0, 36, 30);
    _containerLayer.position = self.center;
    for (int i = 0; i < 3; i++) {
        [self initDotWithIndex:i];
    }
    [self.layer addSublayer:self.containerLayer];
}
- (void)initDotWithIndex:(int)index{
    
    CAShapeLayer *dotlayer = [[CAShapeLayer alloc] init];
    dotlayer.frame = CGRectMake( DOT_WIDTH*index, 3, DOT_WIDTH, DOT_HEIGHT);
    
    UIBezierPath *dotPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(R, R) radius:R startAngle:M_PI_2 endAngle:2.5*M_PI clockwise:true];
    dotlayer.path = dotPath.CGPath;
    dotlayer.fillColor = self.dotColor.CGColor;

    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    animation.values =@[@(0),@(0.25),@(0.5), @(0.75),@(0.9),@(1),@(0.9),@(0.75),@(0.5),@(0.25),@(0)];
    animation.duration = 1.35;
    animation.beginTime = CACurrentMediaTime() + 0.2*index;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.repeatCount = MAXFLOAT;

    [dotlayer addAnimation:animation forKey:@"dotAnimation"];
    [_containerLayer addSublayer:dotlayer];
    
}
- (void)hide{
    [_containerLayer removeAllAnimations];
    [_containerLayer removeFromSuperlayer];
    [UIView transitionWithView:_containerView duration:0.15 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            [self removeFromSuperview];
    } completion:^(BOOL finished) {
        
    }];
}
- (UIColor *)dotColor{
    if (!_dotColor) {
        _dotColor = [UIColor whiteColor];
    }
    return _dotColor;
}
@end
