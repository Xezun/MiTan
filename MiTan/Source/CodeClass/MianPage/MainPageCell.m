//
//  MainPageCell.m
//  MiTan
//
//  Created by thl on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "MainPageCell.h"
#import "MPButton.h"

#define labelWidth self.width/3;

@implementation MainPageCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
        
        self.userPhoto = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"album"]];
        _userPhoto.frame = CGRectMake(20, 15, 50, 50);
        _userPhoto.layer.cornerRadius = 25;
        [_userPhoto.layer setMasksToBounds:YES];
        
        
        self.userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_userPhoto.frame)+15, CGRectGetMinY(_userPhoto.frame)+10, 150, 30)];
        _userNameLabel.text = @"Penny";
        _userNameLabel.font = [UIFont fontWithName:nil size:14.f];
        
        
        self.dropButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
        _dropButton.frame = CGRectMake(CGRectGetMaxX(self.frame)-50, CGRectGetMinY(_userNameLabel.frame), 40, 30);
        [_dropButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:(UIControlStateNormal)];
        
        
        self.titleLabel = [[UILabel alloc] init];
        _titleLabel.frame =CGRectMake(CGRectGetMinX(_userPhoto.frame)-5, CGRectGetMaxY(_userPhoto.frame)+5, CGRectGetMaxX(self.frame) - CGRectGetMinX(_titleLabel.frame)*2, 30);
        _titleLabel.text = @"hahahhahahahhaha";
        
        
        self.view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"o_weiguan"]];
        _view.frame = CGRectMake(CGRectGetMinX(_titleLabel.frame), CGRectGetMaxY(_titleLabel.frame)+10, self.frame.size.width - CGRectGetMinX(_view.frame)*2, 200);
        
        
        /**
         @property(nonatomic,strong) UILabel *commentNumLabel;
         @property(nonatomic,strong) UILabel *goodLabel;
         @property(nonatomic,strong) UILabel *badLabel;
         @property(nonatomic,strong) UIButton *commentButton;
         @property(nonatomic,strong) UIButton *goodButton;
         @property(nonatomic,strong) UIButton *badButton;
         @property(nonatomic,strong) UIButton *dropButton;
         */
        
        self.commentButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
        _commentButton.frame = CGRectMake(0, CGRectGetMaxY(_view.frame)+10,self.width/3,30);
        
        
        MPButton *bt =[MPButton setViewWith:0 image:nil];
        bt.frame = CGRectMake(0, CGRectGetMaxY(_view.frame), 300, 40);
        bt.backgroundColor = [UIColor redColor];
        [bt addTarget:self action:@selector(haha) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self addSubview:_userPhoto];
        [self addSubview:_userNameLabel];
        [self addSubview:_dropButton];
        [self addSubview:_titleLabel];
        [self addSubview:_view];
        [self addSubview:bt];
        
    }
    
    
    
    return self;
}


-(void)haha
{
    NSLog(@"fsda");
}



//-(UIView)


-(void)layoutSubviews
{
    [super layoutSubviews];
    _dropButton.frame = CGRectMake(CGRectGetMaxX(self.frame)-60, CGRectGetMinY(_userNameLabel.frame), 40, 30);
    
    _view.frame = CGRectMake(CGRectGetMinX(_titleLabel.frame), CGRectGetMaxY(_titleLabel.frame)+10, self.frame.size.width - CGRectGetMinX(_view.frame)*2, 200);

}

- (void)awakeFromNib {

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
