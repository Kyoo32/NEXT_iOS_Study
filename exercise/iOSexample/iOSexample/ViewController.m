//
//  ViewController.m
//  iOSexample
//
//  Created by Kate KyuWon on 11/19/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "ViewController.h"
@class EXWebView;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    EXWebView *webView = [EXWebView new];
    [self.view addSubView: webView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
