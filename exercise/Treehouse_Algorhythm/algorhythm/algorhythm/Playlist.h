//
//  Playlist.h
//  algorhythm
//
//  Created by Kate KyuWon on 11/11/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *background;

-(instancetype)initWithIndex:(NSUInteger) index;
@end
