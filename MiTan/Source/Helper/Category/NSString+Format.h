//
//  NSString+Format.h
//  MiTan
//
//  Created by thl on 15/8/18.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Format)

- (BOOL)isQQ;                //是否为qq
- (BOOL)isTel;               //是否为电话号码
- (BOOL)isEmail;             //是否为邮箱
- (BOOL)isChinese;           //是否为中文
//- (BOOL)isUrl;               //是否为网址
- (BOOL) isSuccessfulName;

/**
 *  32位MD5加密
 *
 *  @return 32位MD5加密结果
 */
- (NSString *)MD5;

/**
 *  SHA1加密
 *
 *  @return SHA1加密结果
 */
- (NSString *)SHA1;

@end
