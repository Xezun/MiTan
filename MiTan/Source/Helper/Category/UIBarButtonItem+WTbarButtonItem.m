

//
//  UIBarButtonItem+WTbarButtonItem.m
//  MiTan
//
//  Created by thl on 15/8/17.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "UIBarButtonItem+WTbarButtonItem.h"

@implementation UIBarButtonItem (WTbarButtonItem)


+ (UIBarButtonItem *)addItemWithTarget:(id)target sel:(SEL)action image:(NSString *)image selImagae:(NSString *)selimage
{
    UIButton *bt = [UIButton buttonWithType:(UIButtonTypeSystem)];
    bt.size = CGSizeMake(30, 30);
    [bt addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    [bt setImage:[UIImage imageNamed:image ] forState:(UIControlStateNormal)];
    [bt setImage:[UIImage imageNamed:selimage] forState:(UIControlStateHighlighted)];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:bt];

    return item;
}

@end
