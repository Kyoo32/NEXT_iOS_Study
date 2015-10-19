//
//  NSArray+Mahem.m
//  MyFirstObjectiveCProgram
//
//  Created by Kate KyuWon on 10/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import "NSArray+Mahem.h"

@implementation NSArray (Mahem)
-(NSArray *)capitalizeStrings{
    NSMutableArray *cap = [NSMutableArray array];
    for(NSString *string in self){
        [cap addObject:[string capitalizedString]];
    }
    
    return cap;
}
@end
