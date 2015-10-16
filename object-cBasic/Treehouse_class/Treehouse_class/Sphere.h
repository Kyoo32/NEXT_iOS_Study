//
//  Sphere.h
//  Treehouse_project1_basic
//
//  Created by Kate KyuWon on 10/16/15.
//
//

#import <Foundation/Foundation.h>

@interface Sphere : NSObject /* {
    
    NSArray *_center;
    float _radius;
}

-(void)setRadius:(float)radius;
-(float)radius;

-(void)setCenter:(NSArray *)center;
-(NSArray *)center;
*/


@property(nonatomic) float radius;
@property(nonatomic, strong) NSArray *center;

-(void)setCenter:(NSArray *)center radius:(float)radius;
@end
