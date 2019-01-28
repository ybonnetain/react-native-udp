
#import "RNUdpSocketEventEmitter.h"
#define kOnUdpData @"onUdpData"


@implementation RNUdpSocketEventEmitter
{
    bool listenerAttached;
}


RCT_EXPORT_MODULE(RNUdpSocketEventEmitter);


+ (id)allocWithZone:(NSZone *)zone {
    static RNUdpSocketEventEmitter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}


+(BOOL)requiresMainQueueSetup {
    return YES;
}



-(NSArray <NSString *> *) supportedEvents {
    return @[kOnUdpData];
}



-(NSDictionary *)constantsToExport {
    return @{kOnUdpData: kOnUdpData};
}



-(void)startObserving {
    listenerAttached = YES;
}



-(void)stopObserving {
    listenerAttached = NO;
}



- (void)emit:(NSDictionary *)base64String
        host:(NSString *)host
        port:(NSNumber *)port
{
    if (listenerAttached) {
        [self sendEventWithName:kOnUdpData body:@{
              @"data": base64String,
              @"address": host,
              @"port": port
        }];
    }
}


@end
