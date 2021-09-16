//
//  ViewController.m
//  h210915_brightness_demo
//
//  Created by hwacdx on 2021/9/15.
//

#import "ViewController.h"
#import "CustomSlider.h"
#import "HWVerticalSlider.h"

@interface ViewController ()

/// 亮度指示器
@property(nonatomic, strong) CustomSlider *slider;

/// 纵向拖到条
@property (nonatomic, strong) HWVerticalSlider *verticalSlider;

/// 滑动时的起始位置
@property (nonatomic, assign) CGPoint startPoint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //添加亮度指示器
    [self.view addSubview:self.verticalSlider];
    
//    [self.view addSubview:self.slider];
    
    //添加滑动手势
//    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
//    [self.view addGestureRecognizer:panGestureRecognizer];
}

- (HWVerticalSlider *)verticalSlider {
    if (!_verticalSlider) {
        _verticalSlider = [[HWVerticalSlider alloc] init];
        _verticalSlider.frame = CGRectMake(100, 150, 230, 35);
        _verticalSlider.userInteractionEnabled = YES;
        //逆时针旋转90度
        //_verticalSlider.transform = CGAffineTransformMakeRotation(-M_PI/2.0);
    }
    return _verticalSlider;
}

//- (CustomSlider *)slider {
//    if (!_slider) {
//        _slider = [[CustomSlider alloc] initWithFrame:CGRectMake(10, 100, 35, 135)];
//        _slider.alpha = 1.0;
//
//        //获取当前的屏幕亮度
//        CGFloat brightness = [UIScreen mainScreen].brightness;
//        int value = ceilf((1.0 - brightness) * 100);
//        [_slider setHighlightViewFrame:value];
//
//        //隐藏亮度指示器
//        [UIView animateWithDuration:3 animations:^{
//            self.slider.alpha = 0;
//        }];
//    }
//    return _slider;
//}

#pragma mark - 手势处理
//- (void)handleGesture:(UIPanGestureRecognizer *)gestureRecognizer
//{
//    switch (gestureRecognizer.state) {
//        case UIGestureRecognizerStateBegan:{
//            NSLog(@"======UIGestureRecognizerStateBegan");
//            break;
//        }
//        case UIGestureRecognizerStateChanged:{
//
//            CGPoint point = [gestureRecognizer locationInView:self.view];
//
//            if (self.startPoint.x == 0 && self.startPoint.y == 0) {//起始位置
//                self.startPoint = point;
//            }
//
//            //不处理横向滑动
//            if (self.startPoint.x - point.x > 10) {
//                return;
//            } else if(self.startPoint.x - point.x < -10){
//                return;
//            }
//
//            //显示亮度指示器
//            [UIView animateWithDuration:0.3 animations:^{
//                self.slider.alpha = 1;
//            }];
//
//            //获取当前的屏幕亮度
//            CGFloat brightness = [UIScreen mainScreen].brightness;
//
//            if (self.startPoint.y > point.y) { //往上滑动
//
//                brightness += 0.02;
//
//                if (brightness > 1.0) {
//                    brightness = 1.0;
//                }
//
//                CGFloat tempValue = (1.0 - brightness);
//                [self updateWithBrightness:brightness sliderValue:tempValue];
//
//            } else if (self.startPoint.y < point.y) {//往下滑动
//
//                brightness -= 0.02;
//
//                if (brightness < 0.1) {
//                    brightness = 0.1;
//                }
//
//                //往下滑动时需特殊处理
//                CGFloat tempValue = 1.0 - brightness;
//
//                if (brightness <= 0.1) {
//                    tempValue = 1.0;
//                }
//
//                [self updateWithBrightness:brightness sliderValue:tempValue];
//
//            } else { //没有明显变化
//                //NSLog(@"-->> 4 startPointY:%f - point.y:%f", self.startPoint.y, point.y);
//            }
//
//            break;
//        }
//
//        case UIGestureRecognizerStateEnded:{
//
//            //重置数据
//            self.startPoint = CGPointZero;
//
//            //隐藏亮度指示器
//            [UIView animateWithDuration:3 animations:^{
//                self.slider.alpha = 0;
//            }];
//
//            break;
//        }
//        default:{
//            NSLog(@"======Unknow gestureRecognizer");
//            break;
//        }
//    }
//}
//
//- (void)updateWithBrightness:(CGFloat)brightness sliderValue:(CGFloat)sliderValue {
//
//    int value = ceilf(sliderValue * 100);
//    [self.slider setHighlightViewFrame:value];
//
//    //调整屏幕亮度
//    [[UIScreen mainScreen] setBrightness:brightness];
//}

@end
