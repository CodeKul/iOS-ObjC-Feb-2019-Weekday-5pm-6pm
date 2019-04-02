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
NSArray *arrData1;
NSArray *arrData2;
NSInteger selectedRow = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    arrData1 = [[NSArray alloc] initWithObjects:@"Red", @"Green", @"Blue", @"Yellow", @"Black", @"White", nil];
    arrData2 = [[NSArray alloc] initWithObjects:@"Vipin", @"Sachin", @"Virat", @"Dhoni", @"Yuvraj", @"Pandya", @"Jadeja", nil];
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return arrData1.count;
    }
    else {
        return arrData2.count;
    }
}

//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
//    if (component == 0) {
//        return arrData1[row];
//    }
//    else {
//        return arrData2[row];
//    }
//}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    UILabel *label = [[UILabel alloc] init];
    if (component == 0) {
        label.text = arrData1[row];
        switch (selectedRow) {
            case 0:
                label.textColor = [UIColor redColor];
                break;
            case 1:
                label.textColor = [UIColor greenColor];
                break;
            case 2:
                label.textColor = [UIColor blueColor];
                break;
            case 3:
                label.textColor = [UIColor yellowColor];
                break;
            case 4:
                label.textColor = [UIColor blackColor];
                break;
            case 5:
                label.textColor = [UIColor whiteColor];
                break;
            default:
                break;
        }
    }
    else {
        label.text = arrData2[row];
        label.textColor = [UIColor redColor];
    }
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:25];
    return label;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        selectedRow = row;
        [pickerView reloadAllComponents];
    }
}

@end
