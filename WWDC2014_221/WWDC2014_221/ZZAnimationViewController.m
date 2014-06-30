//
//  ZZAnimationViewController.m
//  WWDC2014_221
//
//  Created by scorpiozj on 6/29/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZAnimationViewController.h"
#import "ZZTestView.h"
@interface ZZAnimationViewController ()
{
    ZZTestView *_testView;
}
@end

@implementation ZZAnimationViewController

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
    _testView = [[ZZTestView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    _testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_testView];
    [UIView animateWithDuration:2 delay:3 options:0 animations:^{
        _testView.alpha = .8;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
