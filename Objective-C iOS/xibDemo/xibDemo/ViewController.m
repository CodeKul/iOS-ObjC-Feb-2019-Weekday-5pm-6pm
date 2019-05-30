//
//  ViewController.m
//  xibDemo
//
//  Created by Apple on 27/05/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)nextButtonClicked:(UIButton *)sender {
    SecondViewController *vc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:true];
}

- (IBAction)toTVCButtonClicked:(UIButton *)sender {
    ThirdViewController *vc = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:true];
}


@end
