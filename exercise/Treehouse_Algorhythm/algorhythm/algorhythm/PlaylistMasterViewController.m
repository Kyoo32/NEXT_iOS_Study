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
    //[self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
    
    //Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    for(NSUInteger index =0; index < self.playlistImageViews.count ; index++){
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.background;
    }
    //self.playListImageView0.image = playlist.playlistIcon;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"showPlaylistDetail"]){
        
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        if([self.playlistImageViews containsObject:playlistImageView]){
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
            //playlistDetailController.segueLabelText = @"Yay! You pressed the button!";
            
            playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];
        }
        
    }
}



- (IBAction)showPlaylistDetail:(id)sender {
    NSLog(@"Hey, stop touching me!");
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}

@end
