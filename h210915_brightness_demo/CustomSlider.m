//
//  CustomSlider.m
//  test
//
//  Created by hwacdx on 21/9/15.
//  Copyright © 2021年 hwacdx. All rights reserved.
//

#import "CustomSlider.h"

@interface CustomSlider ()

/// 半透明背景视图
@property (nonatomic, strong) UIView *translucentView;

/// 默认颜色视图
@property(nonatomic, strong) UIView *defaultView;

/// 高亮颜色视图
@property(nonatomic, strong) UIView *highlightView;

/// 亮度图片
@property (nonatomic, strong) UIImageView *lightImgView;

@end

@implementation CustomSlider

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    //设备背景颜色
    self.backgroundColor = [UIColor clearColor];
    
    //添加半透明背景视图
    self.translucentView = [[UIView alloc] initWithFrame:self.bounds];
    self.translucentView.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.4];
    self.translucentView.layer.cornerRadius = 4;
    [self addSubview:self.translucentView];
    
    //添加默认颜色视图
    CGFloat width = 10;
    self.defaultView = [[UIView alloc]init];
    self.defaultView.frame = CGRectMake(12.5, 10, width, 85);
    self.defaultView.backgroundColor = [UIColor whiteColor];
    self.defaultView.layer.cornerRadius = width / 2;
    [self addSubview:self.defaultView];
    
    //添加高亮颜色视图
    self.highlightView = [[UIView alloc]init];
    self.highlightView.backgroundColor = [UIColor greenColor];
    self.highlightView.layer.cornerRadius = width / 2;
    [self addSubview:self.highlightView];
    
    //添加灯光图标
    CGFloat tempY = CGRectGetMaxY(self.defaultView.frame);
    self.lightImgView = [[UIImageView alloc] init];
    self.lightImgView.frame = CGRectMake(7.5, tempY + 8, 20, 20);
    self.lightImgView.image = [UIImage imageNamed:@"brightness"];
    [self addSubview:self.lightImgView];
    
    return self;
}

-(void)setHighlightViewFrame:(int)tempValue{
    
    CGFloat y = self.frame.size.height * (tempValue / 100.0);
    
    if(y < 10) {//设置最小值
        y = 10;
    }
    
    if (y >= 85) {//设置最大值
        y = 85;
    }
    
    CGFloat height = 95 - y;
    
    if (height <= 1) {
        height = 1;
    }
    
    self.highlightView.frame = CGRectMake(12.5, y, 10, height);
    NSLog(@"-->> highlightView frame:%@", NSStringFromCGRect(self.highlightView.frame));
}

@end
