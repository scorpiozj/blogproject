//
//  ZZSpringViewController.m
//  WWDC2014_221
//
//  Created by scorpiozj on 6/29/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZSpringViewController.h"

@interface ZZSpringViewController ()
{
    UIView *_blueView;
    UIView *_greenView;
}

@end

@implementation ZZSpringViewController

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
    
    [self _addViews];
    
    UITapGestureRecognizer *tapGuesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGuesterAction:)];
    [self.view addGestureRecognizer:tapGuesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma  mark - Private
- (void)_addViews
{
    if (nil == _blueView)
    {
        _blueView = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 100, 100)];
        _blueView.backgroundColor = [UIColor blackColor];
        [self.view addSubview:_blueView];
    }
    
    if (nil == _greenView)
    {
        _greenView = [[UIView alloc] initWithFrame:CGRectMake(170, 100, 100, 100)];
        _greenView.backgroundColor = [UIColor greenColor];
        [self.view addSubview:_greenView];
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)tapGuesterAction:(UITapGestureRecognizer *)gesture
{
    CGRect blueFrame = _blueView.frame;
    CGRect greenFrame = _greenView.frame;
    [UIView animateWithDuration:2
                     animations:^{
        CGRect frame = blueFrame;
        frame.origin.y += 250;
        _blueView.frame = frame;
    }
                     completion:^(BOOL finished) {
                         _blueView.frame = blueFrame;
        
    }];
    
    [UIView animateWithDuration:2
                          delay:0
         usingSpringWithDamping:.9
          initialSpringVelocity:10
                        options:0
                     animations:^{
                         CGRect frame = greenFrame;
                         frame.origin.y += 250;
                         _greenView.frame = frame;
        
    } completion:^(BOOL finished) {
        _greenView.frame = greenFrame;
        
    }];
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
