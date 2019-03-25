//
//  ViewController.m
//  DatePickerDemo
//
//  Created by Apple on 25/03/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)datePickerValueChanged:(UIDatePicker *)sender {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"yyyy-dd-MM hh:mm:ss a";
    NSString *strDate = [df stringFromDate:sender.date];
    NSLog(@"%@", strDate);
}

@end
