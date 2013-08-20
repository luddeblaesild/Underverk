//
//  NewsModel.h
//  Underverk
//
//  Created by Developer on 2013-08-15.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "JSONModel.h"
#import "NewsContentsModel.h"

@protocol NewsModel @end

@interface NewsModel : JSONModel

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NewsContentsModel *newsContent;

@end
