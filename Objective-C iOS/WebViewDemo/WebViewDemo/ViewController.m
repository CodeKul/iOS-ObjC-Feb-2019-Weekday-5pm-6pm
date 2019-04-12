//
//  ViewController.m
//  WebViewDemo
//
//  Created by Apple on 12/04/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property IBOutlet WKWebView *myWebView;
@property IBOutlet UITextField *urlText;
@property IBOutlet UIProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)goButtonCLick:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:_urlText.text];
    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:url];
    [_myWebView loadRequest:req];
    
    [_myWebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([keyPath isEqual: @"estimatedProgress"]) {
        _progressView.progress = _myWebView.estimatedProgress;
        if (_progressView.progress == 1) {
            [_progressView setHidden:true];
        }
        else {
            [_progressView setHidden:false];
        }
    }
}


@end
