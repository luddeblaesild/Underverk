//
//  InfoViewController.m
//  Underverk
//
//  Created by Developer on 2013-08-14.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "InfoViewController.h"
#import "ECSlidingViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize revealMenuBtn;

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
    
    // News button
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Nyheter" style:UIBarButtonItemStyleBordered target:self action:@selector(newsBtnPressed:)];
    
    //revealMenuBtn.image = [UIImage imageNamed:@"menuButton.png"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button methods

// News button
- (void)newsBtnPressed:(id)sender
{
    UIViewController *newsView = [self.storyboard instantiateViewControllerWithIdentifier:@"News"];
    [self.navigationController presentViewController:newsView animated:YES completion:nil];
}

// Reveal menu button
- (IBAction)revealMenuBtnPressed:(id)sender
{
    [self.slidingViewController anchorTopViewTo:ECRight];
}
@end
