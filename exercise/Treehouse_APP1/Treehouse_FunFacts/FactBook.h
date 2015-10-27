//
//  FactBook.h
//  Treehouse_FunFacts
//
//  Created by Kate KyuWon on 10/28/15.
//  Copyright (c) 2015 Kate KyuWon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject

@property (strong, nonatomic) NSArray *facts;

- (NSString *) randomFact;
@end
