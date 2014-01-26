//
//  main.m
//  NSStringTest
//
//  Created by man27382210 on 2014/1/25.
//  Copyright (c) 2014年 En. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSStringTest.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSStringTest *strObj = [[NSStringTest alloc]init];
        NSMutableString *someStr = [[NSMutableString alloc]initWithString:@"happy"];
        strObj.testMutableStrCo = someStr;
        strObj.testMutableStrRe = someStr;
        NSLog(@"testMutableStrCo :%@", strObj.testMutableStrCo);
        NSLog(@"testMutableStrRe :%@", strObj.testMutableStrRe);
        [someStr setString:@"no happy"];
        
        NSLog(@"round 2 testMutableStrCo :%@", strObj.testMutableStrCo);
        NSLog(@"round 2 testMutableStrRe :%@", strObj.testMutableStrRe);
    }
    return 0;
}

