//
//  ContactViewController.m
//  Underverk
//
//  Created by Developer on 2013-08-14.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "ContactViewController.h"
#import "ECSlidingViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Button methods

// Reveal menu button
- (IBAction)revealMenuBtnPressed:(id)sender
{
    [self.slidingViewController anchorTopViewTo:ECRight];
}
@end
