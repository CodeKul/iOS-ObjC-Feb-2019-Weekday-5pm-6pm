//
//  main.m
//  DataTypesDemo
//
//  Created by Apple on 16/02/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         NSNumber
         NSString
         NSArray
         NSDictionary
         */
        
        NSNumber *num = [[NSNumber alloc]init];
        num = [[NSNumber alloc] initWithInt:10];
        num = [[NSNumber alloc] initWithDouble:10.890];
        num = [[NSNumber alloc] initWithBool: false];
        
        NSLog(@"%@",num);
        
        NSString *str1 = [[NSString alloc] init];
        str1 = @"This is my string";
        NSLog(@"%@", str1);
        
        NSString *str2 = @"This is my another string";
//        NSString *str3 = @"" + @"";
        
        NSArray *arr = [[NSArray alloc] init];
        arr = [[NSArray alloc] initWithObjects: @"One", @"Two", @"Three", nil];
        NSLog(@"%@", arr[2]);
        arr = @[@1,@2,@3,@4,@5,@6];
        NSLog(@"%@", arr);


        NSDictionary *dict = [[NSDictionary alloc] init];
        dict = [[NSDictionary alloc] initWithObjects:@[@1, @2, @3, @4, @5] forKeys:@[@"One", @"Two", @"Three", @"Four", @"Five"]];
        NSLog(@"%@", dict[@"Two"]);
    }
    return 0;
}
