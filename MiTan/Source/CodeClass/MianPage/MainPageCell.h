//
//  MainPageCell.h
//  MiTan
//
//  Created by thl on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainPageCell : UITableViewCell

@property(nonatomic,strong) UIImageView * userPhoto;
@property(nonatomic,strong) UILabel *userNameLabel;
@property(nonatomic,strong) UILabel *titleLabel;
@property(nonatomic,strong) UIImageView *view;
@property(nonatomic,strong) UILabel *commentNumLabel;
@property(nonatomic,strong) UILabel *goodLabel;
@property(nonatomic,strong) UILabel *badLabel;
@property(nonatomic,strong) UIButton *commentButton;
@property(nonatomic,strong) UIButton *goodButton;
@property(nonatomic,strong) UIButton *badButton;
@property(nonatomic,strong) UIButton *dropButton;

@end
