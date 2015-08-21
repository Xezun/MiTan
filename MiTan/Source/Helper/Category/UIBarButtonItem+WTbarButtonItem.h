//
//  UIBarButtonItem+WTbarButtonItem.h
//  MiTan
//
//  Created by thl on 15/8/17.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WTbarButtonItem)

+ (UIBarButtonItem *)addItemWithTarget:(id)target sel:(SEL)action image:(NSString *)image selImagae:(NSString *)selimage;

@end
