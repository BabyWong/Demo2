//
//  ViewController.m
//  转换坐标系
//
//  Created by xiaomage on 15/9/21.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *blueView;
@property (nonatomic, weak) UIView *greenView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:redView];
    self.redView = redView;
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    blueView.frame = CGRectMake(50, 50, 50, 50);
    [redView addSubview:blueView];
    self.blueView = blueView;
    
    UIView *greenView = [[UIView alloc] init];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.frame = CGRectMake(20, 20, 60, 60);
    [self.view addSubview:greenView];
    self.greenView = greenView;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    CGRect rect = [self.blueView.superview convertRect:self.blueView.frame toView:self.view];
//    CGRect rect = [self.view convertRect:self.blueView.frame fromView:self.blueView.superview];
//    CGRect rect = [self.blueView convertRect:self.blueView.bounds toView:self.view];
//    CGRect rect = [self.view convertRect:self.blueView.bounds fromView:self.blueView];
//    CGRect rect = [self.redView convertRect:CGRectMake(30, 30, 50, 50) fromView:self.greenView];
    
    CGRect rect = [self.greenView convertRect:CGRectMake(30, 30, 50, 50) fromView:self.blueView];
    NSLog(@"%@", NSStringFromCGRect(rect));
}

@end
