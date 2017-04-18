//
//  Scoller.h
//  start
//
//  Created by zhangmin on 17/4/18.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Scoller : UIView

@property (strong, nonatomic)UIScrollView *scroll;

-(void)initWithArr: (NSArray *)arr;

@end
