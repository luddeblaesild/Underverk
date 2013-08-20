//
//  NewsViewController.m
//  Underverk
//
//  Created by Developer on 2013-08-15.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "NewsViewController.h"
#import "JSONModelLib.h"
#import "NewsFeed.h"
#import "HUD.h"
#import "CustomNewsCell.h"

@interface NewsViewController (){
    NewsFeed* _feed;
}

@end

@implementation NewsViewController

@synthesize newsNavBar;
@synthesize newsTableView;

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

#pragma mark - JSON

-(void)viewDidAppear:(BOOL)animated
{
    //show loader view
    [HUD showUIBlockingIndicatorWithText:@"Laddar nyheter"];
    
    //fetch the feed
    _feed = [[NewsFeed alloc] initFromURLWithString:@"http://www.nebulon.se/json/underverk/underverk_news.json"
                                         completion:^(JSONModel *model, JSONModelError *err) {
                                             //hide the loader view
                                             [HUD hideUIBlockingIndicator];
                                             
                                             //json fetched
                                             //NSLog(@"news: %@", _feed.news);
                                             
                                             //reload the table view
                                             [self.newsTableView reloadData];
                                             
                                         }];
}

#pragma mark - Button methods

- (IBAction)closeNewsBtn:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _feed.news.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"NewsCell";
    
    // We use self.tableView so that we references the proper table view
    CustomNewsCell *cell = [self.newsTableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NewsModel *news = _feed.news[indexPath.row];
    
    // News header
    cell.newsHeaderLabel.text = [NSString stringWithFormat:@"%@", news.title];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [newsTableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NewsModel *news = _feed.news[indexPath.row];
    
    // NSString* message = [NSString stringWithFormat:@"%@",news.newsContent.content];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: news.title
                                                   message: news.newsContent.content
                                                  delegate: self
                                         cancelButtonTitle:@"Stäng"
                                         otherButtonTitles:nil];
    
    
    [alert show];

}

- (IBAction)refreshNewsPressed:(id)sender
{
    // Show loader view
    [HUD showUIBlockingIndicatorWithText:@"Laddar nyheter"];
    
    //fetch the feed
    _feed = [[NewsFeed alloc] initFromURLWithString:@"http://www.nebulon.se/json/underverk/underverk_news.json"
                                         completion:^(JSONModel *model, JSONModelError *err) {
                                             //hide the loader view
                                             [HUD hideUIBlockingIndicator];
                                             
                                             //reload the table view
                                             [self.newsTableView reloadData];
                                         }];
}
@end
