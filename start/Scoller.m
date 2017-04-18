//
//  Scoller.m
//  start
//
//  Created by zhangmin on 17/4/18.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import "Scoller.h"

@implementation Scoller

-(void)initWithArr: (NSArray *)_arr;
{
   
    
        _scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
        
        _scroll.contentSize = CGSizeMake(_arr.count* [UIScreen mainScreen].bounds.size.width, 200);
        
        _scroll.pagingEnabled = YES;
        
        
        _scroll.showsHorizontalScrollIndicator = NO;
        
        [self addSubview:_scroll];
        
        
        for (int i = 0; i<_arr.count; i++) {
            
            UIView *a1 = [[UIView alloc]initWithFrame:CGRectMake(i* [UIScreen mainScreen].bounds.size.width, 0, 60, 50)];
            
            a1.backgroundColor = i==1?[UIColor redColor]:[UIColor grayColor];
            
            a1.tag = 10086+i;
            
            [_scroll addSubview:a1];
            
        }


        
  

}
-(void)layoutSubviews
{


}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
