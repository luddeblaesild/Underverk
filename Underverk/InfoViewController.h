//
//  InfoViewController.h
//  Underverk
//
//  Created by Developer on 2013-08-14.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController

// Open news button
- (void)newsBtnPressed:(id)sender;

// Reveal menu button
- (IBAction)revealMenuBtnPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealMenuBtn;


@end
