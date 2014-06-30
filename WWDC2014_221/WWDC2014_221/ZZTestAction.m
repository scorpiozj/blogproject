//
//  ZZTestAction.m
//  WWDC2014_221
//
//  Created by scorpiozj on 6/29/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZTestAction.h"

@implementation ZZTestAction
- (void)runActionForKey:(NSString *)event object:(id)anObject
              arguments:(NSDictionary *)dict
{
    NSLog(@"%s\nevent:%@\n anObject:%@\narguments:%@",__func__,event, anObject, dict);
}
@end
