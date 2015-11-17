//
//  TableViewController.m
//  Treehouse_blogReader2
//
//  Created by Kate KyuWon on 11/17/15.
//  Copyright © 2015 KateKyuwon. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSURL *blogURL = [NSURL URLWithString: @"https://blog.teamtreehouse.com/api/get_recent_summary/"];
    
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    NSLog(@"%@", jsonData);
    
    NSError *error = nil;
    
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    NSLog(@"%@", dataDictionary);
    
    self.blogposts = [dataDictionary objectForKey:@"posts"];

    
    /*
     //Before AJax.
    NSDictionary *blogPost1 =  @{ @"title" : @"The Missing Widget in Android" , @"authour": @"Ben Jakuben" };
    NSDictionary *blogPost2 =  @{ @"title" : @"Getting stared with iOS development" , @"authour": @"Amit Bijlani" };
    
    NSDictionary *blogPost3 =  @{ @"title" : @"An Interview with Shay howe" , @"authour": @"Joe Villanueva" };
    

    self.blogposts= [NSArray arrayWithObjects: blogPost1, blogPost2, blogPost3, nil];
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.blogposts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath:indexPath];
    NSDictionary *blogpost = [self.blogposts objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [blogpost valueForKey:@"title"];
    cell.detailTextLabel.text = [blogpost valueForKey:@"author"];

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
