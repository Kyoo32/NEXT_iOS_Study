//
//  main.m
//  Treehouse_class
//
//  Created by Kate KyuWon on 10/17/15.
//  Copyright (c) 2015 Kate KyuWon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Button.h"
//Inheritance 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *shape = [[Shape alloc] init];
        NSLog(@"shape area %f",[shape area]);
        
        Circle *round =[[Circle alloc] init];
        round.radius = 10;
        NSLog(@"circle area %f",[round area]);

        Rectangle *square = [[Rectangle alloc] init];
        square.height = 20;
        square.width = 30;
        
        Button *roundButton = [[Button alloc] init];
        roundButton.shape = round;
        
        Button *squareButton = [[Button alloc] init];
        squareButton.shape = square;
        
    }
    return 0;
}
