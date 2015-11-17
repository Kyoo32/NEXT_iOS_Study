//
//  MasterViewController.h
//  Treehouse_blogReader
//
//  Created by Kate KyuWon on 11/17/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic ) NSArray *titlesArray;

@end

