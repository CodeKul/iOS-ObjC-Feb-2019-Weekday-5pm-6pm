//
//  SecondViewController.m
//  xibDemo
//
//  Created by Apple on 27/05/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)nextButtonClicked:(UIButton *)sender {
    ThirdViewController *vc = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:true];
}

@end
