//
//  CireCleView.m
//  start
//
//  Created by zhangmin on 17/4/16.
//  Copyright © 2017年 zhangmin. All rights reserved.
//

#import "CireCleView.h"

#define degreeToRadians(X) (M_PI*(X)/180.0)

#define lineWidt 8

@implementation CireCleView

-(void)setPercent:(NSInteger)percent
{

    _percent = percent;
    
    [CATransaction begin];
    
    [CATransaction setDisableActions:NO];
    
    
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    [CATransaction setAnimationDuration:3];
    
    
    for (int i = 0; i<self.layer.sublayers.count; i++) {
        CALayer *layer = self.layer.sublayers[i];
        if ([layer isKindOfClass:[CStrokrLayer class]]) {
            CStrokrLayer *l = (CStrokrLayer *)layer;
            
            l.strokeEnd = percent/100.0;
            
            NSLog(@"-lll--%@",l);

        }
        
        NSLog(@"---%@",layer);
    }
    
    [CATransaction commit];

}



-(void)setPointX:(CGFloat)pointX
{

    _pointX = pointX;
    
    
    [self setNeedsDisplay];

}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [super drawRect:rect];
    
    [self fraw:_stroArr.count point:_pointX];
}

-(void)fraw:(NSInteger)num point:(CGFloat)pointX{

    
    for (int i = 0; i<num; i++) {
        UIBezierPath *path =  [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width/2.0, self.frame.size.width/4.0) radius:(pointX-(i*25)-lineWidt)/2.0 startAngle:degreeToRadians(0) endAngle:degreeToRadians(360) clockwise:YES];
        
        CAShapeLayer *layer = [CAShapeLayer layer];
        
        UIColor *col = _stroArr[i][0];
        
        layer.strokeColor = col.CGColor;
        
        layer.fillColor = [UIColor clearColor].CGColor;
        
        layer.lineCap = kCALineCapRound;
        
        layer.lineWidth = lineWidt;
        
        layer.path = path.CGPath;
        
        layer.frame = self.bounds;
        
        [self.layer addSublayer:layer];
        
        CStrokrLayer *progressLayer = [CStrokrLayer layer];
        
        progressLayer.frame = self.bounds;
        
        progressLayer.fillColor =  [[UIColor clearColor] CGColor];
        
        UIColor *col2 = _stroArr[i][1];
    
        progressLayer.strokeColor  = col2.CGColor;
        
        progressLayer.lineCap = kCALineCapRound;
        
        progressLayer.lineWidth = lineWidt;
        
        progressLayer.path = [path CGPath];
        
        progressLayer.strokeEnd = 0;
        
        [self.layer addSublayer:progressLayer];
        
        
        CATextLayer *tayer = [CATextLayer layer];
        
        tayer.string = @"123";
        
        tayer.fontSize = 14;
        
        tayer.contentsScale = 2;
        
        tayer.font = (__bridge CFTypeRef)(@"HiraKakuProN-W3");
        
        tayer.alignmentMode = @"center";
        
        tayer.foregroundColor = [UIColor blueColor].CGColor;
        
        tayer.frame = CGRectMake(self.bounds.size.width/4.0, self.bounds.size.height/2.0,self.bounds.size.width/2.0, self.bounds.size.height/2.0);
        
         [self.layer addSublayer:tayer];
        
        
        CALayer *imageLayer = [CALayer layer];
        
        imageLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"120"].CGImage);
        
        CGFloat wid = 30;
        
        imageLayer.frame = CGRectMake(self.bounds.size.width/2.0-(wid/2.0), tayer.frame.origin.y+10,wid, wid);
        
        imageLayer.borderColor=[UIColor brownColor].CGColor;
       
        
        [self.layer addSublayer:imageLayer];
    }
}
@end
