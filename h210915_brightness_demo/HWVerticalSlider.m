//
//  HWVerticalSlider.m
//  h210915_brightness_demo
//
//  Created by hwacdx on 2021/9/16.
//

#import "HWVerticalSlider.h"

@implementation HWVerticalSlider

- (instancetype)init {
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.4];
        
        [self addSubview];
    }
    return self;
}

- (void)addSubview {
   
    //减小
    UIButton *smallBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    [smallBtn setImage:[UIImage imageNamed:@"brightness"] forState:UIControlStateNormal];
    [smallBtn addTarget:self action:@selector(smallBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:smallBtn];
    
    //拖动条
    CGFloat sliderX = CGRectGetMaxX(smallBtn.frame);
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(sliderX + 2, 5, 150, 30)];
    slider.minimumValue = 0;
    slider.maximumValue = 1;
    slider.value = 0.5;
    slider.continuous = YES;
    slider.tintColor = [UIColor blueColor];
    [slider setThumbImage:[UIImage imageNamed:@"slider_point"] forState:UIControlStateNormal];
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self addSubview:slider];
    
    //加大
    CGFloat bigBtnX = CGRectGetMaxX(slider.frame);
    UIButton *bigBtn = [[UIButton alloc] initWithFrame:CGRectMake(bigBtnX + 2, 0, 35, 35)];
    [bigBtn setImage:[UIImage imageNamed:@"brightness"] forState:UIControlStateNormal];
    [self addSubview:bigBtn];
}

-(void)sliderValueChanged:(UISlider *)sender{
    NSLog(@"-->> slider.value:%f", sender.value);
}

- (void)smallBtnOnClick{
    NSLog(@"-->> smallBtnOnClick");
}

@end
