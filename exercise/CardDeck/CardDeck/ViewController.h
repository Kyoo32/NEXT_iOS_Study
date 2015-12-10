//
//  ViewController.h
//  CardDeck
//
//  Created by Kate KyuWon on 12/2/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *show;

@property  NSUInteger cardNum;

- (void)showAtview:(NSNotification*)ahah;
@end

