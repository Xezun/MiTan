//
//  MPButton.h
//  MiTan
//
//  Created by thl on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MPButton : UIButton

@property(nonatomic,strong)UIView *view;
@property(nonatomic,strong)UIImageView *iv;
@property(nonatomic,strong)UILabel *label;

+(instancetype)setViewWith:(CGFloat)x image:(NSString *)image;

@end
