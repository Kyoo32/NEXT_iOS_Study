//
//  ViewController.m
//  CardDeck
//
//  Created by Kate KyuWon on 12/2/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "ViewController.h"
#import "Dealer.h"

@interface ViewController (){
Dealer * q;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"11hello world");
    q = [[Dealer alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showAtview:) name:@"giveOneCard" object:q];
    [q giveCard];
    self.cardNum = q.card;
    
    NSLog(@"44hello worldc %d", self.cardNum);
}

- (void) showAtview:(NSNotification*)ahah{
    NSLog(@"55hello world %d", q.card);
    NSNumber *newNum = [[NSNumber alloc] initWithUnsignedInt:q.card];
    
    NSLog(@"~!~!~!~%@", newNum);
    
    self.show.text = [NSString stringWithFormat:@"%@", newNum];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
