//
//  NSString+Format.m
//  MiTan
//
//  Created by thl on 15/8/18.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "NSString+Format.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (Format)

- (BOOL)match:(NSString *)pattern
{
    NSRegularExpression *mach = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    
    NSArray *result = [mach matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    
    return result.count > 0;
}

//pattern: 规则
/**
 d也代表一个数字
 []代表查找内部的某一个字符而已
 //NSString *pattern = @"[0-9]";   //判断测试字符串是否含有0-9数字
 //NSString *pattern2 = @"ab";   //判断测试字符串是否含有ab
 //NSString *pattern = @"[a-zA-Z0-9]";  //找所有小写字符+大写字母+数字
 //NSString *pattern = @"5{2}";    //表示连在一起的两个5
 //NSString *pattern = @"\\d\\d";     //连在一起的两个数字
 //NSString *pattern = @"[0-9][0-9]";    //连在一起的两个数字
 NSString *pattern = @"\\d{2, 4}";       //连在一起的2个数字或者4个数字, 它会先去匹配最长的那个
 //NSString *pattern = @"^[0-9].*[a-zA-Z]$";    //以数字开头，中间什么都可以，以字母结束
 
 //特殊字符
 //  ? : 0个或者1个
 //  + : 至少一个
 //  * : 0个或者多个
 //  . : 代表任何东西(除换行符)
 //  ^ : 以什么字符串开始
 //  $ : 以什么字符串结束
 */

- (BOOL)isTel
{
    NSString *telpattern = @"^+(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$";
    return [self match:telpattern];
};
- (BOOL)isQQ
{
    NSString *pat = @"^[1-9][0-9]{4,6}[0-9]$";
    return [self match:pat];
};

- (BOOL)isEmail
{
    NSString *emailPatten =  @"^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$";
    return [self match:emailPatten];
};
- (BOOL)isChinese
{
    NSString *pattern = @"[\\u4e00-\\u9fa5]";
    
    return [self match:pattern];
};
//- (BOOL)isUrl
//{
//    NSString *urlpatten = @"^((https?|ftp|news):\/\/)?([a-z]([a-z0-9\-]*[\.。])+([a-z]{2}|aero|arpa|biz|com|coop|edu|gov|info|int|jobs|mil|museum|name|nato|net|org|pro|travel)|(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))(\/[a-z0-9_\-\.~]+)*(\/([a-z0-9_\-\.]*)(\?[a-z0-9+_\-\.%=&]*)?)?(#[a-z][a-z0-9_]*)?$";
//    return [self match:urlpatten];
//};

- (BOOL) isSuccessfulName
{
    if (self.length >=7) {
        return YES;
    }
    return NO;
}



- (NSString *)MD5
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, strlen(cStr), digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return result;
};


- (NSString *)SHA1
{
    const char *cStr = [self UTF8String];
    NSData *data = [NSData dataWithBytes:cStr length:self.length];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, data.length, digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return result;

};

@end
