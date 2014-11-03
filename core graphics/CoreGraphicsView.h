//
//  CoreGraphicsView.h
//  core graphics
//
//  Created by renxiaolin on 14/11/2.
//  Copyright (c) 2014年 https://github.com/RenXLin/. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreGraphicsView : UIView


-(id)initwithPressure:(CGFloat)pressure;
- (void)drawGaugeWithPressure: (CGFloat)pressure;



@end
