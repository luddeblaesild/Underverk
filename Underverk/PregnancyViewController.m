//
//  PregnancyViewController.m
//  Underverk
//
//  Created by Developer on 2013-08-14.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "PregnancyViewController.h"
#import "ECSlidingViewController.h"

@interface PregnancyViewController ()

@end

@implementation PregnancyViewController

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
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Beräkna" style:UIBarButtonItemStyleBordered target:self action:@selector(calculateBtnPressed:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button methods

// Calculate button
- (void)calculateBtnPressed:(id)sender
{
    UIViewController *calculateView = [self.storyboard instantiateViewControllerWithIdentifier:@"Calculate"];
    [self.navigationController presentViewController:calculateView animated:YES completion:nil];
}

- (IBAction)revealMenuBtnPressed:(id)sender
{
    [self.slidingViewController anchorTopViewTo:ECRight];
}

@end
