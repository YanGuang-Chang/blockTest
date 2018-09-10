//
//  main.m
//  blockdemo
//
//  Created by 田玉龙 on 2018/9/6.
//  Copyright © 2018年 田玉龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Test.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSString *a = @"bbb";
        NSLog(@"前------------%p",a);
        a = @"ccccc";
        NSLog(@"后-----------%p",a);
        
//        UILabel *label = [[UILabel alloc] init];
//        NSLog(@"---------%s",object_getClassName(a));
//
        __block int b = 30;
//        Test *test = [[Test alloc] init];
        void(^block)() = ^{
            
            b = 40;
//           NSLog(@"block----------%s",object_getClassName(a));
//            NSLog(@"------%@   %d  %@",a,b,test.name);
        };
        
        block();
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
