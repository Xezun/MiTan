//
//  MPDrop.m
//  MiTan
//
//  Created by thl on 15/8/19.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "MPDrop.h"

@implementation MPDrop


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
    
        _flag = NO;
        self.nameTextfield = [[UITextField alloc] init];
        _nameTextfield.frame = CGRectMake(0, 0, WIDTH, self.frame.size.height-1);
        _nameTextfield.placeholder = @"请输入用户名";
        _nameTextfield.backgroundColor = [UIColor whiteColor];
        
        self.button = [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_button setImage:[UIImage imageNamed:@"navigationbar_arrow_down"]forState:(UIControlStateNormal)];
        [_button addTarget:self action:@selector(action) forControlEvents:(UIControlEventTouchUpInside)];
        _button.size = CGSizeMake(30, 30);
        
        _nameTextfield.rightView = _button;
        _nameTextfield.rightViewMode = UITextFieldViewModeAlways;
        
        self.view = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_nameTextfield.frame), WIDTH, 1)];
        _view.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
        [self addSubview:_nameTextfield];
        [self addSubview:_view];
        
        
    }
    return self;
}


-(void)action
{
    if (_flag) {
        [_button setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:(UIControlStateNormal)];
        _flag = NO;
    }else{
        [_button setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:(UIControlStateNormal)];
        _flag = YES;
        
    }
    
    [self.delegate didTagWithFlag:_flag];
}

@end
