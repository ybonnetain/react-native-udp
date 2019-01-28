
#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTEventEmitter.h>


@interface RNUdpSocketEventEmitter: RCTEventEmitter <RCTBridgeModule>


-(void)emit:(NSDictionary *)base64String
       host:(NSString *)host
       port:(NSNumber *)port;


@end
