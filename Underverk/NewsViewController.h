//
//  NewsViewController.h
//  Underverk
//
//  Created by Developer on 2013-08-15.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UINavigationBar *newsNavBar;

// Close window button
- (IBAction)closeNewsBtn:(id)sender;

// Table view
@property (weak, nonatomic) IBOutlet UITableView *newsTableView;

// Refresh button
- (IBAction)refreshNewsPressed:(id)sender;

@end
