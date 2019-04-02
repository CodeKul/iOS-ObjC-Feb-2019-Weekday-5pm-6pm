//
//  ViewController.m
//  TableViewDemo
//
//  Created by Apple on 02/04/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

NSArray *arr1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arr1 = @[@"Red", @"Green", @"Blue", @"Yello", @"Gray", @"White", @"Black"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arr1.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arr1[indexPath.row]];
    cell.detailTextLabel.text = @"Colors";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Selected cell: %ld", indexPath.row);
}

@end
