//
//  Main.m
//  question
//
//  Created by Kate KyuWon on 11/4/15.
//  Copyright © 2015 Kate KyuWon. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Main.h"

@interface NXPoint1 : NSObject
{
//ivar : instance variable, usually prefix_
    //default - @private
    float _x;
    float _y;
}
//methods
- (id)initWithX:(float)x andY:(float)y;
- (void)setX:(float)x;
- (void)setY:(float)y;
- (float)x;
- (float)y;

- (void)displayPoint;
@end //NXPoint1

@implementation NXPoint1
- (id)initWithX:(float)x andY:(float)y{
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
}

- (void)setX:(float)x{
    _x = x;
   // self.x =x;
}
- (void)setY:(float)y{
    _y = y;
}

- (float)x{
    return _x;
}
- (float)y{
    return _y;
}

- (void)displayPoint{
    NSLog(@"x = %f, y = %f", _x, _y);
}

-(NSString*) description{
    return [NSString stringWithFormat:@"x=%f, y=%f", _x, _y];
}
@end //NXPoint1

@interface NXTriangle1 : NSObject{
    NXPoint1* _first;
    NXPoint1* _second;
    NXPoint1* _third;
}

-(void)setPointFirst:(NXPoint1*)first Second:(NXPoint1*)second Third:(NXPoint1*)third;
-(id)initWithPoints:(float)x1 :(float)y1 :(float)x2 :(float)y2 :(float)x3 :(float)y3;

@end //NXTriangle1

@implementation NXTriangle1
-(void)setPointFirst:(NXPoint1*)first Second:(NXPoint1*)second Third:(NXPoint1*)third{
    _first = first;
    _second = second;
    _third = third;
}
-(id)initWithPoints:(float)x1 :(float)y1 :(float)x2 :(float)y2 :(float)x3 :(float)y3{
    self = [super init];
    if (self) {
        
    [self setPointFirst: [[NXPoint1 alloc] initWithX:x1 andY:y1] Second:[[NXPoint1 alloc] initWithX:x2 andY:y2] Third :[[NXPoint1 alloc] initWithX:x3 andY:y3] ] ;
    }
    return self;
}
-(NSString*) description{
    return [NSString stringWithFormat:@"<Triangle position>\nx1 = %f, y1 = %f \nx2 = %f, y2 = %f\nx3 = %f, y3 = %f", [_first x], [_first y], [_second x], [_second y], [_third x], [_third y] ];
}
@end //NXTriangle1

int main(){
    NSString* aString = @"a";
    NSString* bString = @"a"; // text
    NSNumber *iNumber = @3.14; // [[NSNumber alloc] initWithFlong : 3.14] : heap
    
    id sender;
    sender = aString;
    NSLog(@" %@ ", sender);
    
    if(aString == bString){
        // if @"a" == @"a", equal!!!!
        printf("hello\n");
    }
    //원래는
    if([aString isEqualToString:bString]) {
        printf("!!!\n");
    }
    
    
    NXPoint1 *pointZ = [[NXPoint1 alloc] init];
    [pointZ setX:10];
    [pointZ setY:30];
    [pointZ displayPoint];
    
    NXPoint1 *pointY = [[NXPoint1 alloc] initWithX:40 andY: 20 ];
    [pointY displayPoint];
    
    NSLog(@"pointZ : %@", pointZ);
    NSLog(@"iNumber : %@", iNumber);
    
    NXTriangle1 *triangle1 = [[NXTriangle1 alloc] initWithPoints:1 :2 :3 :4 :5 :6];
    NSLog(@"triangle1 : %@:", triangle1);
    
    return 0;
}