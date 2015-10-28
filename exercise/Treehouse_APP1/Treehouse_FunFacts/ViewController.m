//
//  ViewController.m
//  Treehouse_FunFacts
//
//  Created by Kate KyuWon on 10/22/15.
//  Copyright (c) 2015 Kate KyuWon. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"
#import "ColorWheel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factbook = [[FactBook alloc] init];
    self.colorWheel = [[ColorWheel alloc] init];
    UIColor *randomColor = [self.colorWheel randomColor];

    
    self.funFactLabel.text = [self.factbook randomFact];
    self.view.backgroundColor = randomColor;
    self.funFactButton.tintColor = randomColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    NSLog(@"You pressed me!");
    
    UIColor *randomColor = [self.colorWheel randomColor];

    self.funFactLabel.text = [self.factbook randomFact];
    self.view.backgroundColor = randomColor;
    self.funFactButton.tintColor = randomColor;
}

@end
