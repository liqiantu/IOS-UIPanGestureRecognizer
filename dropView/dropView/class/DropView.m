//
//  DropView.m
//  dropView
//
//  Created by liqiantu on 2018/10/10.
//  Copyright © 2018年 qiantu. All rights reserved.
//

#import "DropView.h"

@interface DropView ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *greenViewHeightConstraint;

@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *greenView;

@end

@implementation DropView

//- (instancetype)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//        [self setUp];
//    }
//    return self;
//}

//https://www.jianshu.com/p/de6b61f3583a

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setUp];
}

- (void)setUp {
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(addPanAct:)];
    [_redView addGestureRecognizer:panGesture];
}

- (void)addPanAct:(UIPanGestureRecognizer *)recognizer {
    // 获取偏移量
    CGPoint translationPoint = [recognizer translationInView:_redView];
    CGFloat y = translationPoint.y;
    CGFloat x = translationPoint.x;
    
    [recognizer setTranslation:CGPointMake(0, 0) inView:self];
    
//    greenView 随手势进行移动
//    self.greenView.transform = CGAffineTransformTranslate(self.greenView.transform, x, y);
//    self.redView.transform = CGAffineTransformTranslate(self.redView.transform, x, y);
    
    
//    self.greenView.transform = CGAffineTransformScale(self.greenView.transform, x, y);
    

    self.greenView.frame = CGRectMake(self.greenView.frame.origin.x, self.greenView.frame.origin.y, self.greenView.frame.size.width, self.greenView.frame.size.height + y);
    self.redView.transform = CGAffineTransformTranslate(self.redView.transform, 0, y);

}

@end
