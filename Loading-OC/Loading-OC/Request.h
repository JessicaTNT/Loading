//
//  Request.h
//  BeatHeart
//
//  Created by dyso on 2018/4/9.
//  Copyright © 2018年 dyso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Request : NSObject
+ (void)requestBlock:(dispatch_block_t)block;
@end
