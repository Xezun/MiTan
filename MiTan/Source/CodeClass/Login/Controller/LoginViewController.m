//
//  LoginViewController.m
//  MiTan
//
//  Created by thl on 15/8/18.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "LoginViewController.h"
#import "MPDrop.h"




#define WIDTH CGRectGetMaxX([UIScreen mainScreen].bounds)
#define HIGHT CGRectGetMaxY([UIScreen mainScreen].bounds)

@interface LoginViewController ()<RememberedUserViewDelegate,MPDropDelegate>
{
    BOOL flag;
}

//@property(nonatomic,strong)UIView *v;
@property(nonatomic,strong)UIView *view1;
@property(nonatomic,strong)UITextField *pwdTextfield;
@property(nonatomic,strong)RememberedUserView *remView;
@property(nonatomic,strong)UIButton *button;
@property(nonatomic,strong)UITextField *userNameTextfild;
@property(nonatomic,strong)UIButton *loginButton;
@property(nonatomic,strong)MPDrop *drop;

@end

@implementation LoginViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    flag = NO;
    

    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Login" ]];
    
    //输入账号栏
    self.drop = [[MPDrop alloc] initWithFrame:CGRectMake(0, 100,WIDTH, 50)];
    _drop.delegate =self;
      
    //密码栏
    self.pwdTextfield = [[UITextField alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_drop.frame), WIDTH, 50)];
    _pwdTextfield.backgroundColor = [UIColor whiteColor];
    _pwdTextfield.placeholder = @"请输入密码";
    
  
    //下拉出来的view
    self.remView = [[RememberedUserView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_drop.frame), CGRectGetMaxX([UIScreen mainScreen].bounds),(CGRectGetMaxX([UIScreen mainScreen].bounds) - 120)/3.0 +10 )];
    _remView.backgroundColor = [UIColor whiteColor];
    _remView.delegate =self;
    
    //下来出view时下面的横线
    self.view1= [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_remView.frame), self.view.frame.size.width, 1)];
    _view1.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    
    //登录按钮
    self.loginButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
    _loginButton.frame = CGRectMake(0, CGRectGetMaxY(_pwdTextfield.frame), WIDTH, 50);
    _loginButton.backgroundColor = [UIColor colorWithRed:1.000 green:1.000 blue:0.400 alpha:0.680];
    [_loginButton setTitle:@"登录" forState:(UIControlStateNormal)];
    

    
    [self.view addSubview:_drop];
   // [self.view addSubview:_v];
    [self.view addSubview:_pwdTextfield];
    [self.view addSubview:_loginButton];
}

-(void)didSelectImageAtIndes:(NSInteger)index
{
    NSLog(@"%ld",index);
    
};

-(void)image:(UIImageView *)imageview
{
    [imageview setImage:[UIImage imageNamed:@"music"]];
};


-(void)didTagWithFlag:(BOOL)flag
{
    if (flag) {
        [self.view insertSubview:_remView belowSubview:_pwdTextfield ];
        CGFloat teme1 = 0.15f;
        [UIView animateWithDuration:teme1 animations:^{
            self.pwdTextfield.y = CGRectGetMaxY(_remView.frame);
            self.loginButton.y = CGRectGetMaxY(_pwdTextfield.frame);
        } completion:^(BOOL finished) {
            [self.view addSubview:_view1];
        }];


    }else{
        CGFloat teme1 = 0.15f;
        [UIView animateWithDuration:teme1 animations:^{
            self.pwdTextfield.y = CGRectGetMaxY(_drop.frame);
            self.loginButton.y = CGRectGetMaxY(_pwdTextfield.frame);
            [_view1 removeFromSuperview];
            
        } completion:^(BOOL finished) {
            
            [_remView removeFromSuperview];
        }];
    }
    
};

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
