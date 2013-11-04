//
//  SCKMainViewController.m
//  SOCKS
//
//  Created by Christopher Ballinger on 11/4/13.
//  Copyright (c) 2013 Christopher Ballinger. All rights reserved.
//

#import "SCKMainViewController.h"
#import "SCKPolipoWrapper.h"

@interface SCKMainViewController ()

@end

@implementation SCKMainViewController

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

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [[SCKPolipoWrapper sharedInstance] startWithOptions:@[]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
