//
//  CustomSlider.m
//  test
//
//  Created by hwacdx on 21/9/15.
//  Copyright © 2021年 hwacdx. All rights reserved.
//

#import "CustomSlider.h"

@implementation CustomSlider

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    //设备背景颜色
    self.backgroundColor = [UIColor lightGrayColor];
    
    //设置高亮颜色
    self.highlightView = [[UIView alloc]init];
    self.highlightView.frame = CGRectMake(0, 0, 0, self.frame.size.height);
    self.highlightView.backgroundColor = [UIColor greenColor];
    [self addSubview:self.highlightView];
    
    return self;
}

-(void)setHighlightViewFrame:(int)tempValue{
    
    CGFloat y = self.frame.size.height * (tempValue / 100.0);
    CGFloat height = self.frame.size.height - y;
    self.highlightView.frame = CGRectMake(0, y, self.frame.size.width, height);
    NSLog(@"-->> highlightView frame:%@", NSStringFromCGRect(self.highlightView.frame));
}

@end
