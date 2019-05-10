//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by Apple on 06/05/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UIView *myContentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myScrollView.contentSize = _myContentView.frame.size;
}

@end
