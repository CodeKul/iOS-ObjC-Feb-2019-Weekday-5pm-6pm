//
//  ViewController.m
//  PickerViewDemo
//
//  Created by Apple on 25/03/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>

@end

@implementation ViewController
NSArray *arrData;

- (void)viewDidLoad {
    [super viewDidLoad];
    arrData = [[NSArray alloc] initWithObjects:@"Red", @"Green", @"Blue", @"Yellow", @"Black", @"White", nil];
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return arrData.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return arrData[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"%@", arrData[row]);
}

@end
