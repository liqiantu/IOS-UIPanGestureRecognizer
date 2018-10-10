//
//  ViewController.m
//  dropView
//
//  Created by liqiantu on 2018/10/10.
//  Copyright © 2018年 qiantu. All rights reserved.
//

#import "ViewController.h"
#import "DropView.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DropView *v = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([DropView class]) owner:self options:nil][0];
    
    [self.view addSubview:v];
    
    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(44);
        make.centerX.equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(SCREEN_HEIGHT);
    }];
}


@end
