//
//  MyClass.m
//  ClassesAndObjects
//
//  Created by Apple on 12/02/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass {
    // Private instance variables
    double speed;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self->speed = 0.0;
        self.model = @"";
    }
    return self;
}

- (void)drive {
    NSLog(@"Driving a %@. Vrooooom!", self.model);
}

- (void) speed_up {
    speed++;
}

- (void) display_speed {
    NSLog(@"Speed: %f", speed);
}

@end
