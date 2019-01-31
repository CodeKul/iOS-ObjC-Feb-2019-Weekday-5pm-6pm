//
//  main.m
//  Operators
//
//  Created by Apple on 31/01/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Assignment
        NSString *str1 = @"Codekul";
        str1 = @"The Gurukul for Coders!";
        
        NSString *str2 = @"Melayer";
        str1 = str2;
        
//        Arithmetic
        /*
         +
         -
         *
         /
         %
         */
        
        int a = 10;
        int b = 20;
        
        int res = a + b;
        NSLog(@"%d", res);
        res = a - b;
        NSLog(@"%d", res);
        res = a * b;
        NSLog(@"%d", res);
        res = a / b;
        NSLog(@"%d", res);
        res = a % b;
        NSLog(@"%d", res);

//        Incr/Decr
        /*
         a++ Post incr
         ++a Pre incr
         a-- Post decr
         --a Pre decr
         */
        
        NSLog(@"%d", ++a);
        
//        Comparison
        /*
         <
         >
         <=
         >=
         ==
         !=
         */
        
        BOOL res1 = a < b;
        NSLog(@"%d",res1);

//        ? : inline comparison
        
        res1 = a < b ? true: false;
        
        
//        Compound assignment
        /*
         
         +=
         -=
         *=
         /=
         %=
         
         */
        
        res += a; // res = res + a
        
//      Logical
        /*
         &&
         ||
         !
         
         p  q   &&  ||  !p
         0  0   0   0   1
         0  1   0   1   1
         1  0   0   1   0
         1  1   1   1   0
         */
        
        res1 = a == 10 && b == 20;
        
        NSLog(@"%d", res1);
    }
    return 0;
}
