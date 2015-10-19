//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main()
{

  // NSArray *foo1 = [[NSArray alloc] initWithObjects:@"f", @"o", @"o", nil];
    NSArray *foo = @[@"f", @"o", @"o"];
    
    NSLog(@"foo %@",foo);
    
    for(NSString *string in foo){
        NSLog(@"%@", string);
    }
    
    NSString *thang= foo[2];
    NSLog(@"%@", thang);
    //NSArray is immutable;
    
    NSMutableArray *lots = [[NSMutableArray alloc] init];
    lots[0] = @"bravo";
    lots[1] = @"lime";
    lots[2] = @"charlie";
    lots[3] = @"delta";
    lots[4] = @"alpha";
    
    NSLog(@"lots %@", lots);
    
    [lots removeObjectAtIndex:2];
    
    NSLog(@"lots %@", lots);
    
    return 0;
}
