//
//  ZZShapeViewController.m
//  WWDC2014_221
//
//  Created by Zhu J on 6/30/14.
//  Copyright (c) 2014 Ch J. All rights reserved.
//

#import "ZZShapeViewController.h"
#import "ZZShapeView.h"

@interface ZZShapeViewController ()
{
    ZZShapeView *_shapeView;
}
@end

@implementation ZZShapeViewController

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
    _shapeView = [[ZZShapeView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:_shapeView];
    [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(timeAction:) userInfo:nil repeats:YES];

    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)timeAction:(NSTimer *)timer
{
    static float progress = .0;
    progress += 0.1;
    if (progress > 1.5)
    {
        progress = .0;
    }
    [_shapeView setProgress:progress];
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
