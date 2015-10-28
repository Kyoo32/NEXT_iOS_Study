//
//  ColorWheel.h
//  Treehouse_FunFacts
//
//  Created by Kate KyuWon on 10/28/15.
//  Copyright © 2015 Kate KyuWon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorWheel : NSObject

@property (strong, nonatomic) NSArray *colors;

-(UIColor*) randomColor;

@end
