//
//  SCKMainViewController.h
//  SOCKS
//
//  Created by Christopher Ballinger on 11/4/13.
//  Copyright (c) 2013 Christopher Ballinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCDAsyncSocket.h"

@interface SCKMainViewController : UIViewController <GCDAsyncSocketDelegate>

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) GCDAsyncSocket *socket;

@end
