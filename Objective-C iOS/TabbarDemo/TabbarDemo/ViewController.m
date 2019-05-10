//
//  ViewController.m
//  TabbarDemo
//
//  Created by Apple on 10/05/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WKWebView *myWebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"http://www.codekul.com"]];
    [_myWebView loadRequest:req];
}


@end
