//
//  ZZShapeView.m
//  WWDC2014_221
//
//  Created by Zhu J on 6/30/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZShapeView.h"

@interface ZZShapeView ()
{
    CAShapeLayer *_shape;
}
@end
@implementation ZZShapeView

+ (Class)layerClass
{
    return [CAShapeLayer class];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        _shape = [CAShapeLayer layer];
        CGMutablePathRef circlePath = CGPathCreateMutable();
		CGPathAddEllipseInRect(circlePath, NULL, CGRectInset(self.layer.bounds, 10, 10));
		
		_shape.path = circlePath;
		CGPathRelease(circlePath);
        
        _shape.fillColor = [UIColor cyanColor].CGColor;
        _shape.lineWidth = 6;
        _shape.strokeColor = [UIColor redColor].CGColor;

//        _shape.strokeStart = .0;
//        _shape.strokeEnd = 1.0;
        
        [self.layer addSublayer:_shape];
        
    }
    return self;
}
- (void)setProgress:(float)progress
{
    _shape.strokeEnd = progress;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
