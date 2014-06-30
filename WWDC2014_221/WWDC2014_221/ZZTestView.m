//
//  ZZTestView.m
//  WWDC2014_221
//
//  Created by scorpiozj on 6/29/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZTestView.h"
#import "ZZTestAction.h"
@implementation ZZTestView
+ (Class)layerClass
{
    return [CALayer class];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (id<CAAction>)actionForLayer:(CALayer *)layer forKey:(NSString *)event
{
    return [[ZZTestAction alloc] init];
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
