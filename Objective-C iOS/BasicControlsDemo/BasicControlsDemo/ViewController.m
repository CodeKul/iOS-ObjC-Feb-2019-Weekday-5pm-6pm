//
//  ViewController.m
//  BasicControlsDemo
//
//  Created by Apple on 13/03/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTxt;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)goButtonClicked:(UIButton *)sender {
    _nameLbl.text = _nameTxt.text;
}

@end
