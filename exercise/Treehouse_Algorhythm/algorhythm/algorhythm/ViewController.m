//
//  ViewController.m
//  algorhythm
//
//  Created by Kate KyuWon on 11/5/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouched {
     self.view.backgroundColor = [UIColor orangeColor];
}


@end
