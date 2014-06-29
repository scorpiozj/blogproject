//
//  ZZMasterViewController.h
//  WWDC2014_221
//
//  Created by scorpiozj on 6/29/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZZDetailViewController;

@interface ZZMasterViewController : UITableViewController

@property (strong, nonatomic) ZZDetailViewController *detailViewController;

@end
