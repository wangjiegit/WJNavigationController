//
//  WJNavigationController.m
//  WJNavigationController
//
//  Created by 王杰 on 2018/7/31.
//  Copyright © 2018年 王杰. All rights reserved.
//

#import "WJNavigationController.h"

@interface WJNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation WJNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    SEL handleTransition = NSSelectorFromString(@"handleNavigationTransition:");
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:handleTransition];
    pan.delegate = self;
    [self.view addGestureRecognizer:pan];
    self.interactivePopGestureRecognizer.enabled = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];//x区分左滑右滑 大于0是向右滑动
    if (self.viewControllers.count == 1 && translation.x > 0) {
        return false;
    } else {
        return true;
    }
}


@end
