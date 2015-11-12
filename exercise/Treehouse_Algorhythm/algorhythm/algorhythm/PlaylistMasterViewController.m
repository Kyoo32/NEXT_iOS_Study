//
//  ViewController.m
//  algorhythm
//
//  Created by Kate KyuWon on 11/5/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailviewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
    
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    self.playListImageView0.image = playlist.playlistIcon;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"showPlaylistDetail"]){
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailController.segueLabelText = @"Yay! You pressed the button!";
    }
}

@end
