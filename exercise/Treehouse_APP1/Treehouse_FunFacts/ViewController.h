//
//  ViewController.h
//  Treehouse_FunFacts
//
//  Created by Kate KyuWon on 10/22/15.
//  Copyright (c) 2015 Kate KyuWon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FactBook;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;
@property (strong, nonatomic) FactBook *factbook;


@end

