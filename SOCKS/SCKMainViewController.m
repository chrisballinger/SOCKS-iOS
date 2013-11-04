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
        self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.button setTitle:@"Test" forState:UIControlStateNormal];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.view addSubview:self.button];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSArray *options = @[@"socksProxyType=socks5", @"proxyAddress=0.0.0.0", @"dnsUseGethostbyname=yes"];
    [[SCKPolipoWrapper sharedInstance] startWithOptions:options];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.button.frame = CGRectMake(20, 20, 100, 50);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
