//
//  ViewController.m
//  BoomAnimation
//
//  Created by admin on 2017/7/21.
//  Copyright © 2017年 AlezJi. All rights reserved.
//
//http://www.jianshu.com/p/1a969505f557

#import "ViewController.h"
#import "UIView+Boom.h"

@interface ViewController ()
@property(strong,nonatomic)UIView *redView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.redView  = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 200)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.redView boom];
    });
}



@end
