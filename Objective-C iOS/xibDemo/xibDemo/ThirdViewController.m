//
//  ThirdViewController.m
//  xibDemo
//
//  Created by Apple on 27/05/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)backToVCButtonClicked:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:true];
}

@end
