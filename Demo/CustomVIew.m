//
//  CustomVIew.m
//  Demo
//
//  Created by chongdian on 2018/5/29.
//  Copyright © 2018年 chongdian. All rights reserved.
//

#import "CustomVIew.h"

@implementation CustomVIew

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIBezierPath *path = UIBezierPath.bezierPath;
    [path moveToPoint:CGPointMake(-50, -50)];
    [path addLineToPoint:CGPointMake(-50, 50)];
    [path addLineToPoint:CGPointMake(50, 50)];
    [path addLineToPoint:CGPointMake(50, -50)];
    [path closePath];
    
    if ([path containsPoint:point]) {
        return self.subviews[0];
    }
    return self;
}

@end
