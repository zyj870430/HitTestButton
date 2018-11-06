//
//  ViewController.m
//  Demo
//
//  Created by chongdian on 2018/5/29.
//  Copyright © 2018年 chongdian. All rights reserved.
//

#import "ViewController.h"
#import "CustomVIew.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomVIew *view = [[CustomVIew alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    view.backgroundColor = UIColor.orangeColor;
    view.center = self.view.center;
    [self.view addSubview:view];
    
    UIButton *button = [UIButton buttonWithType:0];
    button.frame = CGRectMake(-50, -50, 100, 100);
    [button setBackgroundColor:UIColor.greenColor];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];
}

- (void)click:(UIButton *)sender
{
    NSLog(@"click");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
