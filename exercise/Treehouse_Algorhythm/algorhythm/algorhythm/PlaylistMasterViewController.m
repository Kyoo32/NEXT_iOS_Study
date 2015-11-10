//
//  ViewController.m
//  algorhythm
//
//  Created by Kate KyuWon on 11/5/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailviewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"showPlaylistDetial"]){
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailController.segueLabelText = @"Yay! You pressed the button!";
    }
}

@end
