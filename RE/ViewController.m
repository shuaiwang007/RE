//
//  ViewController.m
//  RE
//
//  Created by 王帅 on 16/3/15.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "TextDetection.h"

@interface ViewController ()
@property(nonatomic, copy) UITextField *emailTextField;       // 用户名
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self buildUI];
    [self LayoutSubViews];
}

- (void)buildUI {
    [self.view addSubview:self.userName];

}


- (UITextField *)userName {
    if (!_emailTextField) {
        _emailTextField = [[UITextField alloc] init];
        _emailTextField.placeholder = @"请输入您的用户名";
        [_emailTextField becomeFirstResponder];
        _emailTextField.clearsOnBeginEditing = YES;
        _emailTextField.keyboardType = UIKeyboardTypeDefault;
    }
    return _emailTextField;
}




- (void)LayoutSubViews {
    [self.emailTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(30);
        make.top.mas_equalTo(60);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(40);
    }];
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    if (![TextDetection validateEmail:_emailTextField.text] && _emailTextField.text.length) {
        
        NSLog(@"您输入的邮箱格式不正确");
        return;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
