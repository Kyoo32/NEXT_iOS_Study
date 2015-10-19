//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Shape.h"

int main()
{
    Shape *shape = [[Shape alloc] init];
    
    NSArray *mixed = @[@23, @"tango" ,shape];
    for(id thing in mixed){
        //id is as (void *)p in c.
        NSLog(@"%@", thing);
        NSLog(@"%@", [thing description]);
    }
    return 0;
}
