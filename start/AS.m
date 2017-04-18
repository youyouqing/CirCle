//
//  AS.m
//  start
//
//  Created by zhangmin on 17/4/18.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import "AS.h"
@implementation AS

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(Scoller *)s{

    if (!_s) {
        _s = [[Scoller  alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        [_s initWithArr:_sctollArr];
    }
    
    return _s
    ;
}

-(void)layoutSubviews
{
    [_sc addSubview:self.s];
//    Scoller *s = [[Scoller  alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
//    [s initWithArr:_sctollArr];
//    [_sc addSubview:s];
}

- (IBAction)q:(id)sender {
    
    if (_dele&&[_dele respondsToSelector:@selector(responseQ:)]) {
        [_dele responseQ:(UIButton *)sender];
    }
    
}
- (IBAction)S:(id)sender {
    
    if (_dele&&[_dele respondsToSelector:@selector(responseQ:)]) {
        [_dele responseQ:(UIButton *)sender];
    }
}
- (IBAction)d:(id)sender {
    
    if (_dele&&[_dele respondsToSelector:@selector(responseQ:)]) {
        [_dele responseQ:(UIButton *)sender];
    }
}

@end
