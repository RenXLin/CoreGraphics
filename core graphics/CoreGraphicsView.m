//
//  CoreGraphicsView.m
//  core graphics
//
//  Created by renxiaolin on 14/11/2.
//  Copyright (c) 2014年 https://github.com/RenXLin/. All rights reserved.
//

#import "CoreGraphicsView.h"
#import "StyleKit.h"

@implementation CoreGraphicsView
{
    CGFloat _pressure;

}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

-(id)initwithPressure:(CGFloat)pressure
{
    if (self == [super init]) {
        _pressure = pressure;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
- (void)drawGaugeWithPressure: (CGFloat)pressure
{
    _pressure = pressure;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();

    [StyleKit drawCanves2:_pressure];
    
    CGContextClosePath(context);
}


@end
