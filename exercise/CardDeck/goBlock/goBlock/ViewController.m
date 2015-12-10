//
//  ViewController.m
//  goBlock
//
//  Created by Kate KyuWon on 12/9/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)move:(id)sender {
    
    [UIView animateWithDuration: 1 delay:0 options:UIViewAnimationOptionAutoreverse  animations:^{
        NSLog(@"!!!!!!%@", sender);
        [_click setTitle: @"hello"forState:UIControlStateNormal];
        self.click.backgroundColor = [UIColor purpleColor];
        self.click.alpha = 0.5;
        self.click.frame = CGRectMake(300,300,100,40);
        
    }
                       completion:^(BOOL finished) {
        
    }];
}
@end
