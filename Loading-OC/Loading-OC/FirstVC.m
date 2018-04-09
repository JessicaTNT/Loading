//
//  FirstVC.m
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "FirstVC.h"
#import "Request.h"
#import "ViewController.h"
@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    UIButton *clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [clickBtn setTitle:@"Back Back" forState:UIControlStateNormal];
    clickBtn.frame = CGRectMake(0, 0, 120, 60);
    [clickBtn grainColorWithRGBArr: @[(__bridge NSArray * _Nullable)(RGB(208.0, 100.0, 101.0, 1)).CGColor, (__bridge NSArray * _Nullable)(RGB(83.0, 20.0, 135.0, 1)).CGColor]];
    clickBtn.center = self.view.center;
    [clickBtn addTarget:self action:@selector(toRootVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
    
    // 执行耗时操作
    [self doTask];
}
- (void)doTask{
    [Request requestBlock:^{
    [self hideLoadingV];
    }];

}
- (void)toRootVC{
    [self dismissViewControllerAnimated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
