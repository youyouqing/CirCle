//
//  AS.h
//  start
//
//  Created by zhangmin on 17/4/18.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scoller.h"

@protocol ASDelegate <NSObject>

-(void)responseQ:(UIButton *)btn;

@end

@interface AS : UIView
@property (weak, nonatomic) IBOutlet UIView *sc;

@property (weak, nonatomic) IBOutlet UITextField *sssss;
@property (strong, nonatomic)NSArray *sctollArr;

@property (strong, nonatomic)Scoller *s;

@property (weak, nonatomic)  id<ASDelegate> dele;

@end
