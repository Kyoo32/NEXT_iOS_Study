//
//  PlaylistDetailViewController.m
//  algorhythm
//
//  Created by Kate KyuWon on 11/10/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.buttonPressedLabel.text = self.segueLabelText;
 
    if(self.playlist){
        self.buttonPressedLabel.text = self.playlist.playlistTitle;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
