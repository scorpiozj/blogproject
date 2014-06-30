//
//  ZZVisualViewController.m
//  WWDC2014_221
//
//  Created by Zhu J on 6/30/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZVisualViewController.h"

@interface ZZVisualViewController ()

@end

@implementation ZZVisualViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(50, 80, 50, 50)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 200, 320, 150)];
    [self.view addSubview:datePicker];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self performSelector:@selector(_addVisualEffect) withObject:nil afterDelay:2];
}
- (void)_addVisualEffect
{
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *vev = [[UIVisualEffectView alloc] initWithEffect:blur];
    vev.frame = self.view.bounds;
    [self.view addSubview:vev];
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
