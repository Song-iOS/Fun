//
//  ViewController.m
//  123
//
//  Created by Scorpio on 16/6/17.
//  Copyright © 2016年 Neusoft. All rights reserved.
//

#import "ViewController.h"
#import "LanhanSinglton.h"
#import "NewViewController.h"
#import "QNUrlSafeBase64.h"
#import <PromiseKit.h>


@interface ViewController ()

/** arrau */
@property (nonatomic, strong)NSArray *array;
/** id */
@property (nonatomic, weak)id name;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *ste = @"123";
    _name = ste;
    ste = nil;
    NSLog(@"%@",_name);
//    LanhanSinglton *singlton = [[LanhanSinglton alloc]init];
//    NSLog(@"alloc%@",singlton);
//    LanhanSinglton *singlton4 = [[LanhanSinglton alloc]init];
//    NSLog(@"alloc%@",singlton4);
//    
//    LanhanSinglton *singlton1 = [LanhanSinglton sharedInstanced];
//    NSLog(@"share%@",singlton1);
//    LanhanSinglton *singlton3 = [LanhanSinglton sharedInstanced];
//    NSLog(@"share%@",singlton3);
//
//    LanhanSinglton *singlton2 = [LanhanSinglton new];
//    NSLog(@"new%@",singlton2)
//    NSArray *array = @[@"1",@"1",@"2",@"3",@"1"];
//    NSOrderedSet *new = [NSOrderedSet orderedSetWithArray:array];
//    NSLog(@"%@",new.array);
//    NSString *str =  [QNUrlSafeBase64 encodeString:@"沈阳"];
//    NSLog(@"%@",str);
//    
//    NSData *data = [QNUrlSafeBase64 decodeString:str];
//    NSLog(@"%@",data);
//    NSString *str1 = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@",str1);
    id __weak obj = nil;
    {
        id __strong obj1 = [[NSObject alloc]init];
        obj = obj1;
        NSLog(@"A%@",obj);
    }
    NSLog(@"B%@",obj);
//    @autoreleasepool {
//        id __autoreleasing obj1 = [[NSObject alloc]init];
//        NSError *__autoreleasing*error;
//        *error = [[NSError alloc]initWithDomain:@"das" code:1 userInfo:nil];
//        id obj2 = [[NSObject alloc]init];
//        void *d = (__bridge void *)(obj2);
//        
//    }
//    int funcd(int count);
//    int result = funcd(10);
//    NSLog(@"%d",result);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//     NSLog(@"%@",_name);
    UIAlertView *alrt = [[UIAlertView alloc]initWithTitle:@"提示" message:@"消息" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alrt promise].then(^(NSNumber *dismissedButtonIndex){
        switch ([dismissedButtonIndex integerValue]) {
            case 0:
                NSLog(@"取消");
                break;
            case 1:
                NSLog(@"确定");
            default:
                break;
        }
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NewViewController *newVC =  segue.destinationViewController;
    newVC.block = ^(NSString *value){
        NSLog(@"%@",value);
    };
}
@end
