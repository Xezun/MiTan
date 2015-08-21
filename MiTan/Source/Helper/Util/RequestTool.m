//
//  RequestTool.m
//  MiTan
//
//  Created by thl on 15/8/19.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "RequestTool.h"

@implementation RequestTool

+(void)connWithUrl:(NSString *)url body:(NSString *)body data:(netData)netdata
{
    NSURL *urlPath = [NSURL URLWithString:url];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:urlPath];
    
    if (body.length != 0) {
        request.HTTPMethod = @"post";
        request.HTTPBody = [body dataUsingEncoding:NSUTF8StringEncoding];
        
    }
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        netdata(data);
    }];
};

@end
