//
//  MyBookingsViewController.m
//  Underverk
//
//  Created by Developer on 2013-08-15.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "MyBookingsViewController.h"

@interface MyBookingsViewController ()

@end

@implementation MyBookingsViewController

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

- (IBAction)closeMyBookingsBtn:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
