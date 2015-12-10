//
//  BlogPost.h
//  Treehouse_blogReader2
//
//  Created by Kate KyuWon on 11/24/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject {
    NSString *title;
    NSString *author;
}

@property (nonatomic) NSString *sometitle;

@property(nonatomic) int views;
//primative type has no option with strong/weak
@property(nonatomic, getter=isUnread) BOOL unread;
@end
