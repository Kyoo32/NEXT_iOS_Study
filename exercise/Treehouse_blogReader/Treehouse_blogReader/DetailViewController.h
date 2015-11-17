//
//  DetailViewController.h
//  Treehouse_blogReader
//
//  Created by Kate KyuWon on 11/17/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

