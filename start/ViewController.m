//
//  ViewController.m
//  start
//
//  Created by zhangmin on 17/3/22.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import "ViewController.h"
#import "CireCleView.h"
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

@interface ViewController ()

@end

@implementation ViewController



- (IBAction)btn:(UIButton *)sender
{

    for (int i =1; i<=5; i++) {
        
        UIButton *btn = [self.view viewWithTag:i];
//        [btn setBackgroundColor:[UIColor whiteColor]];
        btn.selected = NO;
    }
    
    [self start:sender tags:sender.tag];
    
}


-(void)start:(UIButton *)button tags:(NSInteger)tags
{
    for (int i =1; i<=tags; i++) {
        
        UIButton *btn = [self.view viewWithTag:i];
//        [btn setBackgroundColor:[UIColor redColor]];
        btn.selected = YES;
    }
}




- (void)viewDidLoad {
    [super viewDidLoad];
    /* 第一个圈stroke的颜色  第二个圈的颜色*/
    NSArray *colorStrokeArr = @[[UIColor redColor],[UIColor greenColor]];
    
     NSArray *colorStrokeArr2 = @[[UIColor yellowColor],[UIColor lightGrayColor]];
    
    
    
    CireCleView *view = [[CireCleView alloc]initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 200)];
    
    
    view.backgroundColor = [UIColor cyanColor];
    
  
    
    view.pointX = 120;
    
    view.stroArr = @[colorStrokeArr,colorStrokeArr2];
    
   
      
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        view.percent = 40;
    });
    
    
    [self.view addSubview:view];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
