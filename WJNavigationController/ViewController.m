//
//  ViewController.m
//  WJNavigationController
//
//  Created by 王杰 on 2018/7/31.
//  Copyright © 2018年 王杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(100, 300, 200, 44);
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitle:@"click me" forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(clickEvent) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

- (void)clickEvent {
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
