//
//  ViewController.m
//  TestNotificationAndPresent
//
//  Created by ys on 16/3/24.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"

#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor whiteColor];
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(present) name:@"present" object:self];
}

- (void)present
{
        [self.navigationController presentViewController:[[UINavigationController alloc] initWithRootViewController:[ThirdViewController new]] animated:YES completion:nil];
//    [self presentViewController:[ThirdViewController new] animated:YES completion:nil];
}

- (void)buttonAction
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"present" object:self];
}

@end
