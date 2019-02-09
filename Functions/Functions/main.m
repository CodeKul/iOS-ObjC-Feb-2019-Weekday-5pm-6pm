//
//  main.m
//  Functions
//
//  Created by Apple on 09/02/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction(void);
void myFunctionWithParam(int);
int myFunctionWithReturningData(int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        myFunction();
        myFunctionWithParam(100);
        NSLog(@"myFunctionWithReturningData: %d",myFunctionWithReturningData(30));
    }
    return 0;
}

void myFunction() {
    NSLog(@"This is myFunction");
}

void myFunctionWithParam(int data) {
    NSLog(@"This is myfunctionWithParam: %d",data);
}

int myFunctionWithReturningData(int d) {
    return d*23;
}
