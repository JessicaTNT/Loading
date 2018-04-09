//
//  Request.m
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import "Request.h"

@implementation Request
+ (void)requestBlock:(dispatch_block_t)block{

    NSURL *url = [NSURL URLWithString:@"http://120.25.226.186:32812/login"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"post";
    //5.设置请求体
    request.HTTPBody = [@"username=520it&pwd=520it&type=JSON" dataUsingEncoding:NSUTF8StringEncoding];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSLog(@"%@",dict);
        block();
    }];
     [dataTask resume];
}
@end
