//
//  main.m
//  FirstDemo
//
//  Created by Apple on 30/01/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
    @autoreleasepool {

//        Premitive data types
        int a = 10;
        float b = 20.18;
        double c = 30.279;
        char d = 'A';
        bool e = true;
        
//        ObjC type
        NSString *f = @"Codekul";
        
//        Constants
        const int g = 20;
        
        NSLog(@"%d",a);
        NSLog(@"%f",b);
        NSLog(@"%f",c);
        NSLog(@"%c",d);
        NSLog(@"%d",e);
        NSLog(@"%@",f);
        NSLog(@"%d",g);
        a = 30;
        NSLog(@"%d",g);

    }
    return 0;
}
