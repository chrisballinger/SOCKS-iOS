//
//  SCKPolipoWrapper.h
//  SOCKS
//
//  Created by Christopher Ballinger on 11/3/13.
//
//

#import <Foundation/Foundation.h>

@interface SCKPolipoWrapper : NSObject

@property (nonatomic) dispatch_queue_t queue;

+ (SCKPolipoWrapper*) sharedInstance;

- (void) startWithOptions:(NSArray*)options;

@end
