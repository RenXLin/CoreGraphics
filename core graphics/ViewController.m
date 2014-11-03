//
//  ViewController.m
//  core graphics
//
//  Created by renxiaolin on 14/11/2.
//  Copyright (c) 2014年 https://github.com/RenXLin/. All rights reserved.
//

#import "ViewController.h"
#import "CoreGraphicsView.h"


@interface ViewController ()

@end

@implementation ViewController
{
    CoreGraphicsView *_myView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _myView = [[CoreGraphicsView alloc] initwithPressure:0];
    _myView.frame = CGRectMake(10, 200, 300, 400);
    [self.view addSubview:_myView];
    
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, 100,  200, 100)];
    [slider addTarget:self action:@selector(SliderChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];

}

-(void)SliderChange:(UISlider *)slider
{
    NSLog(@"%f",slider.value);
    [_myView drawGaugeWithPressure:slider.value];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}


@end
