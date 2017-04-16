//
//  ViewController.h
//  start
//
//  Created by zhangmin on 17/3/22.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DoubleWaves.h"
#import "KView.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *bg;

@property (weak, nonatomic) IBOutlet UIView *bg1;
@property (nonatomic, strong) DoubleWaves *wavesView;

@end

