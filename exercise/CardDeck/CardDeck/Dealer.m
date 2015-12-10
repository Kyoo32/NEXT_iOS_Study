//
//  Dealer.m
//  CardDeck
//
//  Created by Kate KyuWon on 12/2/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "Dealer.h"
#include <stdlib.h>


@implementation Dealer

-(void) giveCard{
    self.card =  arc4random_uniform(53);
    
    NSLog(@"22hello world %d", self.card);
    NSNumber *numberObject = [[NSNumber alloc] initWithInt:self.card];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"giveOneCard" object:self userInfo:@{@"selected": numberObject }];
    NSLog(@"33hello world");
}
@end
