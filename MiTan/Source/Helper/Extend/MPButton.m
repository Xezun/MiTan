//
//  MPButton.m
//  MiTan
//
//  Created by thl on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "MPButton.h"

@implementation MPButton

//+(id)buttonWithType:(UIButtonType)buttonType
//{
//    
//}

+(instancetype)setViewWith:(CGFloat)x image:(NSString *)image{
    MPButton *bt = [UIButton buttonWithType:(UIButtonTypeSystem)];
    bt.frame = CGRectMake(0, 0, 100, 20);
    
  //  self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.width/3, self.height)];
//    
//    self.iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lxh_holdzhu"]];
//    _iv.frame = CGRectMake(0, 0, _view.width/4, self.height);
//    
//    self.label = [[UILabel alloc]init];
//    _label.frame =CGRectMake(CGRectGetMaxX(_label.frame), 0, 10, self.height);
//    _label.text = @"0";


    return bt;

}





@end
