//
//  main.m
//  Treehouse_class
//
//  Created by Kate KyuWon on 10/17/15.
//  Copyright (c) 2015 Kate KyuWon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sphere.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Sphere *ball = [[Sphere alloc] init];
        
        //[ball setRadius:25];
        ball.radius = 25;
        NSLog(@"Radius : %f", [ball radius]);
        
    }
    return 0;
}
