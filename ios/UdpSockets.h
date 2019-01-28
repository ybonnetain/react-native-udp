
#import <Foundation/Foundation.h>
#import <Availability.h>
#import "GCDAsyncUdpSocket.h"
#import "UdpSocketClient.h"
#import <React/RCTBridgeModule.h>
#import <React/RCTBridge.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTEventDispatcher.h>

@interface UdpSockets : NSObject<SocketClientDelegate, RCTBridgeModule>

@end
