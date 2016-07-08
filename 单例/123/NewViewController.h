//
//  NewViewController.h
//  123
//
//  Created by Scorpio on 16/6/17.
//  Copyright © 2016年 Neusoft. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^TypeBlock)(NSString *value);

@interface NewViewController : UIViewController
@property (nonatomic, copy)TypeBlock block;
@end
