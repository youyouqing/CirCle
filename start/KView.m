//
//  KView.m
//  start
//
//  Created by zhangmin on 17/4/17.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import "KView.h"
#import "MAline.h"
@implementation KView

- (NSMutableArray *)MA5Positions {
    if (!_MA5Positions) {
        _MA5Positions = [NSMutableArray array];
    }
    return _MA5Positions;
}
//- (instancetype)initWithContext:(CGContextRef)context drawModels:(NSArray *)drawLineModels  {
//    self = [super init];
//    if (self) {
////        _context = context;
////        _drawLineModels = drawLineModels;
//    }
//    return self;
//}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
     [super drawRect:rect];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
//     [self.MA5Positions addObject: [NSValue valueWithCGPoint:CGPointMake(xPosition, ABS(maxY - (model.MA5.floatValue - minValue)/unitValue))]];
    
    
     [self.MA5Positions addObject: [NSValue valueWithCGPoint:CGPointMake(64, 44.034637909053359)]];
    
      [self.MA5Positions addObject: [NSValue valueWithCGPoint:CGPointMake(71, 48.739845010555797)]];
      [self.MA5Positions addObject: [NSValue valueWithCGPoint:CGPointMake(78, 52.983500627191638)]];
      [self.MA5Positions addObject: [NSValue valueWithCGPoint:CGPointMake(85, 53.560924806263188)]];
      [self.MA5Positions addObject: [NSValue valueWithCGPoint:CGPointMake(99, 54.616384451803718)]];
    
//    if (!self.drawPositionModels) {
//        return;
//    }

    if(self.MA5Positions.count > 0) {
        MAline *ma5Line = [[MAline alloc]initWithContext:ctx];
        [ma5Line drawWithColor:[UIColor redColor] maPositions:self.MA5Positions];
    }

}


@end
