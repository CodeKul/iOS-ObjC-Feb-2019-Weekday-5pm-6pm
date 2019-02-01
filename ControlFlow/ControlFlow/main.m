//
//  main.m
//  ControlFlow
//
//  Created by Apple on 01/02/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int a = 50;
        int b = 20;
        
        if(a < b) {
//            true part
            NSLog(@"a is less than b");
        }
        else if (a == b) {
            NSLog(@"a and b are equal");
        }
        else {
//            false part
            NSLog(@"a is greater than b");
            
            if (a == 30) {
                NSLog(@"a is equal 30");
            }
        }
        
//        Loops
        
        /*
         initialisation;
         while (condition) {
            statements;
            incr/decr;
         }
         */
        
        int i = 0;
        while (i < 10) {
            NSLog(@"Codekul - %d",i);
            i++;
        }
        
        /*
         initialisation;
         do {
            statements;
            incr/decr;
         } while(condition);
         */
        
        i = 100;
        do {
            NSLog(@"The Gurukul for Coders!");
            i++;
        } while (i < 10);

        /*
         for (initialisation; condition; incr/decr) {
            statements;
         }
         */
        
        for (i = 0; i < 10; i++) {
            NSLog(@"Codekul");
        }
        
    }
    return 0;
}
