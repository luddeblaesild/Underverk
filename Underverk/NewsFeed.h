//
//  NewsFeed.h
//  Underverk
//
//  Created by Developer on 2013-08-15.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "JSONModel.h"
#import "NewsModel.h"

@interface NewsFeed : JSONModel

@property (strong, nonatomic) NSArray<NewsModel> *news;

@end
