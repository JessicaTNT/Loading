//
//  BaseVC.m
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "BaseVC.h"
#import "LoadingView.h"
@interface BaseVC ()
@property (nonatomic, strong) LoadingView *loadingV;
@end

@implementation BaseVC
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showLoadingV];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = RGB(208.0, 100.0, 101.0, 1);
}
- (void)showLoadingV{
    _loadingV = [[LoadingView alloc] initWithView:self.view];
    [self.view addSubview:_loadingV];
}
- (void)hideLoadingV{
    [_loadingV hide];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
