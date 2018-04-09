//
//  LoadingView.h
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoadingView : UIView
@property (nonatomic, strong) UIColor *dotColor;
- (id)initWithView:(UIView *)view;
- (void)hide;
@end
