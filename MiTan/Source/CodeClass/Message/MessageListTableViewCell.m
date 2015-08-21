//
//  MessageListTableViewCell.m
//  MiTan
//
//  Created by lanou3g on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "MessageListTableViewCell.h"

@interface MessageListTableViewCell ()

@property (nonatomic, strong) UILabel *messageBadgeLabel;

@end

@implementation MessageListTableViewCell

- (void)setBadgeCount:(NSUInteger)badgeCount {
    self.messageBadgeLabel.text = [NSString stringWithFormat:@"%ld", badgeCount];
    if (badgeCount > 0) {
        _messageBadgeLabel.alpha = 1;
    }else{
        _messageBadgeLabel.alpha = 0;
    }
}

- (NSUInteger)badgeCount {
    return [self.messageTitleLabel.text integerValue];
}

- (UIImageView *)userPhotoImageView {
    if (_userPhotoImageView != nil) {
        return _userPhotoImageView;
    }
    CGRect frame = self.contentView.bounds;
    CGFloat width = frame.size.height - 20;
    // 总高度 = 上边距10 + 图片高度 + 下边距10
    _userPhotoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, width, width)];
    _userPhotoImageView.layer.borderWidth = .5;
    _userPhotoImageView.layer.borderColor = [UIColor colorWithRed:.9 green:.9 blue:.9 alpha:1].CGColor;
    [self.contentView addSubview:_userPhotoImageView];
    return _userPhotoImageView;
}

- (UILabel *)messageTitleLabel {
    if (_messageTitleLabel != nil) {
        return _messageTitleLabel;
    }
    CGRect frame = self.userPhotoImageView.frame;
    // 左边距 10 + 图片 + 间距10 + 标题宽度 + 日期宽80 + 右边距 10 = 总宽度
    _messageTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(frame) + 10, CGRectGetMinY(frame), self.contentView.frame.size.width - CGRectGetWidth(frame) - 110, 20)];
    _messageTitleLabel.font = [UIFont systemFontOfSize:14.f];
    [self.contentView addSubview:_messageTitleLabel];
    return _messageTitleLabel;
}

- (UILabel *)messageDateLabel {
    if (_messageDateLabel != nil) {
        return _messageDateLabel;
    }
    CGRect frame = self.messageTitleLabel.frame;
    _messageDateLabel = [[UILabel alloc] init];
    _messageDateLabel.frame = CGRectMake(CGRectGetMaxX(frame), CGRectGetMinY(frame), 80, 15);
    _messageDateLabel.textAlignment = NSTextAlignmentRight;
    _messageDateLabel.font = [UIFont systemFontOfSize:13.f];
    _messageDateLabel.textColor = [UIColor colorWithRed:.6 green:.6 blue:.6 alpha:1];;
    [self.contentView addSubview:_messageDateLabel];
    return _messageDateLabel;
}

- (UILabel *)messageSummaryLabel {
    if (_messageSummaryLabel != nil) {
        return _messageSummaryLabel;
    }
    CGRect frame = self.messageTitleLabel.frame;
    _messageSummaryLabel = [[UILabel alloc] init];
    // 总高度 - 上边距10 - 标题高度20 - 下边距10
    _messageSummaryLabel.frame = CGRectMake(CGRectGetMinX(frame), CGRectGetMaxY(frame), CGRectGetMaxX(self.contentView.frame) - 30 - CGRectGetWidth(self.userPhotoImageView.frame) - 20, self.contentView.frame.size.height - 40);
    _messageSummaryLabel.font = [UIFont systemFontOfSize:12.f];
    _messageSummaryLabel.textColor = [UIColor colorWithRed:.6 green:.6 blue:.6 alpha:1];
    _messageSummaryLabel.numberOfLines = 2;
    [self.contentView addSubview:_messageSummaryLabel];
    return _messageSummaryLabel;
}

- (UILabel *)messageBadgeLabel {
    if (_messageBadgeLabel != nil) {
        return _messageBadgeLabel;
    }
    CGRect frame = self.messageSummaryLabel.frame;
    _messageBadgeLabel = [[UILabel alloc] init];
    _messageBadgeLabel.frame = CGRectMake(CGRectGetMaxX(frame) + 5, CGRectGetMinY(frame) + CGRectGetHeight(frame) / 2 - 7.5, 15, 15);
    _messageBadgeLabel.layer.cornerRadius = 7.5;
    _messageBadgeLabel.layer.masksToBounds = YES;
    _messageBadgeLabel.backgroundColor = [UIColor colorWithRed:207/255. green:45/255. blue:43/255. alpha:1];
    _messageBadgeLabel.textColor = [UIColor whiteColor];
    _messageBadgeLabel.font = [UIFont systemFontOfSize:10.f];
    _messageBadgeLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:_messageBadgeLabel];
    return _messageBadgeLabel;
}

- (void)drawRect:(CGRect)rect {
    CGRect frame = self.contentView.bounds;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    path.lineWidth = .5;
    [[UIColor colorWithRed:.9 green:.9 blue:.9 alpha:1] set];
    path.lineCapStyle = kCGLineCapSquare;
    path.lineJoinStyle = kCGLineCapSquare;
    [path moveToPoint:CGPointMake(0, frame.size.height - .5)];
    [path addLineToPoint:CGPointMake(frame.size.width, frame.size.height - .5)];
    [path stroke];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    //[super setSelected:selected animated:animated];
//    if (selected) {
//        self.contentView.backgroundColor = [UIColor colorWithRed:.95 green:.95 blue:.96 alpha:1];
//    }else{
//        self.contentView.backgroundColor = [UIColor whiteColor];
//    }
    // Configure the view for the selected state
}

@end
