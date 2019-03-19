//
//  ViewController.m
//  BasicControlsByCode
//
//  Created by Apple on 18/03/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, retain) IBOutlet UILabel* myLabel;
@property(nonatomic, retain) IBOutlet UITextField* myTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _myLabel = [[UILabel alloc] initWithFrame:CGRectMake(16, 20, 288, 40)];
    _myLabel.text = @"Codekul";
    _myLabel.textColor = UIColor.blueColor;
    _myLabel.backgroundColor = UIColor.yellowColor;
    _myLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_myLabel];
    
    _myTextField = [[UITextField alloc] initWithFrame: CGRectMake(16, 70, 288, 30)];
    _myTextField.placeholder = @"Enter name";
    _myTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_myTextField];
    
    UIButton* btn = [[UIButton alloc] initWithFrame: CGRectMake(110, 110, 100, 30)];
    [btn setTitle:@"GO" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.greenColor forState:UIControlStateHighlighted];

    [btn addTarget:self action:@selector(goButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    
}

-(void) goButtonClicked:(UIButton *) sender {
    _myLabel.text = _myTextField.text;
}

@end
