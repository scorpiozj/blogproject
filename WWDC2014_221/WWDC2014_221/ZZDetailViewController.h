//
//  ZZDetailViewController.h
//  WWDC2014_221
//
//  Created by scorpiozj on 6/29/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZZDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
