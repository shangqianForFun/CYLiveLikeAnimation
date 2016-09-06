//
//  ViewController.m
//  CYLiveLikeAnimation
//
//  Created by 陈阳阳 on 16/9/6.
//  Copyright © 2016年 cyy. All rights reserved.
//

#import "ViewController.h"
#import "CYLiveLikeAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view, typically from a nib.
    CYLiveLikeAnimation *like = [[CYLiveLikeAnimation alloc]initWithFrame:self.view.bounds];
    like.backgroundColor = [UIColor clearColor];
    [self.view addSubview:like];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
