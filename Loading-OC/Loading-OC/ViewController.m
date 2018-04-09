//
//  ViewController.m
//  BeatHeart
//
//  Created by dyso on 2018/4/8.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "ViewController.h"
#import "FirstVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor =  RGB(208.0, 100.0, 101.0, 1);
    UIButton *clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [clickBtn setTitle:@"click Me to Next" forState:UIControlStateNormal];
    clickBtn.frame = CGRectMake(0, 0, 140, 60);
    [clickBtn grainColorWithRGBArr: @[(__bridge NSArray * _Nullable)(RGB(208.0, 100.0, 101.0, 1)).CGColor, (__bridge NSArray * _Nullable)(RGB(83.0, 20.0, 135.0, 1)).CGColor]];
    clickBtn.center = self.view.center;
    [clickBtn addTarget:self action:@selector(toNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
    

}
- (void)toNext{
    [self presentViewController:[[FirstVC alloc] init] animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
