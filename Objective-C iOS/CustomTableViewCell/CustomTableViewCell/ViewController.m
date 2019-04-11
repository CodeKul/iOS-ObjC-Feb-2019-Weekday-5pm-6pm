//
//  ViewController.m
//  CustomTableViewCell
//
//  Created by Apple on 03/04/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

NSArray *players;
- (void)viewDidLoad {
    [super viewDidLoad];
    players = @[@{@"name": @"Sachin", @"score": @"1000", @"teamName": @"MI", @"imgName": @"sachin.jpg"}, @{@"name": @"Virat", @"score": @"2000", @"teamName": @"RCB", @"imgName": @"virat.jpg"}, @{@"name": @"Yuvraj", @"score": @"700", @"teamName": @"MI", @"imgName": @"yuvraj.jpg"}, @{@"name": @"Dhoni", @"score": @"1500", @"teamName": @"CSK", @"imgName": @"dhoni.jpg"}];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return players.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 100;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSDictionary *dict = players[indexPath.row];
    
    [cell setData:dict[@"name"] :dict[@"teamName"] :dict[@"score"] :dict[@"imgName"]];
    
    return cell;
}

@end
