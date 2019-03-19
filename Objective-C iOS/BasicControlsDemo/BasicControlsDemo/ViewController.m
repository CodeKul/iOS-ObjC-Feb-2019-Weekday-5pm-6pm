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
@property (weak, nonatomic) IBOutlet UISlider *mySlider;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)goButtonClicked:(UIButton *)sender {
    _nameLbl.text = _nameTxt.text;
}

- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        sender.tintColor = UIColor.redColor;
    }
    else if (sender.selectedSegmentIndex == 1) {
        sender.tintColor = UIColor.greenColor;
    }
    else {
        sender.tintColor = UIColor.blueColor;
    }
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    
    _nameLbl.text = [NSString stringWithFormat:@"%f", sender.value];
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    
    if (sender.isOn == true) {
        _mySlider.userInteractionEnabled = true;
    }
    else {
        _mySlider.userInteractionEnabled = false;
    }
}


@end
