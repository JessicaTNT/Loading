//
//  UIView+GradientColor.m
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "UIView+GradientColor.h"

@implementation UIView (GradientColor)
- (CAGradientLayer *)grainColorWithRGBArr:(NSArray *)arr{
    CAGradientLayer *layer = [[CAGradientLayer alloc] init];
    layer.frame = self.bounds;
    layer.colors = arr;
    layer.startPoint = CGPointMake(0, 1);
    layer.endPoint = CGPointMake(0, 0);
    [self.layer addSublayer:layer];
    return layer;
}
@end
