//
//  RequestTool.h
//  MiTan
//
//  Created by thl on 15/8/19.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "rea"

typedef void(^netData)(NSData *data);

@interface RequestTool : NSObject



+(void)connWithUrl:(NSString *)url body:(NSString *)body data:(netData)netdata;

@end
