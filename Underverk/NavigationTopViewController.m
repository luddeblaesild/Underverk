//
//  MenuViewController.m
//  Underverk
//
//  Created by Developer on 2013-08-14.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "NavigationTopViewController.h"

@implementation NavigationTopViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Shadow effect on slide menu
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 2.0f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
  
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
    
}

@end
