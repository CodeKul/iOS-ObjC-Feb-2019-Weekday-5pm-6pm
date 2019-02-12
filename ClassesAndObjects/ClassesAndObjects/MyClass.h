//
//  MyClass.h
//  ClassesAndObjects
//
//  Created by Apple on 12/02/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyClass : NSObject {
    
}

@property (copy) NSString *model;

- (void) drive;
- (void) speed_up;
- (void) display_speed;

@end

NS_ASSUME_NONNULL_END
