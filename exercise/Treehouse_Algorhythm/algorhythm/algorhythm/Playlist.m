//
//  Playlist.m
//  algorhythm
//
//  Created by Kate KyuWon on 11/11/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

-(instancetype)initWithIndex:(NSUInteger) index{
    self = [super init];
    if(self){
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _background = [self rgbColorFromDicitionary:colorDictionary];
    }
    return self;
}



-(UIColor *)rgbColorFromDicitionary: (NSDictionary *)colorDicitionary{
    CGFloat red = [[colorDicitionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDicitionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDicitionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDicitionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
@end
