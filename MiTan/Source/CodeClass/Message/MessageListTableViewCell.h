//
//  MessageListTableViewCell.h
//  MiTan
//
//  Created by lanou3g on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageListTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *userPhotoImageView;
@property (nonatomic, strong) UILabel *messageTitleLabel;
@property (nonatomic, strong) UILabel *messageSummaryLabel;
@property (nonatomic, strong) UILabel *messageDateLabel;

@property (nonatomic, assign) NSUInteger badgeCount;


@end
