//
//  main.m
//  ClassesAndObjects
//
//  Created by Apple on 12/02/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

#import"MyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MyClass *obj1 = [[MyClass alloc] init];
        obj1.model = @"Swift";
        [obj1 drive];
        
        [obj1 speed_up];
        [obj1 speed_up];
        [obj1 speed_up];

        [obj1 display_speed];
    }
    return 0;
}
