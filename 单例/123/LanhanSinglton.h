//
//  LanhanSinglton.h
//  123
//
//  Created by Scorpio on 16/6/17.
//  Copyright © 2016年 Neusoft. All rights reserved.
//

#import <Foundation/Foundation.h>
/** 为了防止不停的if -->( _instance == nil) else ....这种令人作呕的判断，下面实现使用线程方式（记得实现NSCopying, NSMutableCopying协议方法） 
 */
@interface LanhanSinglton : NSObject<NSCopying,NSMutableCopying>

+(instancetype)sharedInstanced;

@end
