//
//  CustomSlider.h
//  test
//
//  Created by hwacdx on 21/9/15.
//  Copyright © 2021年 hwacdx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomSlider : UIView

@property(nonatomic, strong) UIView *highlightView;

-(void)setHighlightViewFrame:(int)tempValue;

@end
