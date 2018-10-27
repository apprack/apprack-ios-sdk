//
//  AppDelegate.m
//  AppRack SDK ObjC Sample
//
//  Copyright © 2018 apprack.io. All rights reserved.
//

#import "AppDelegate.h"
#import <APRFramework/APRFramework.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
    
    NSString* appKit = @"c35398a2-0ad7-43b4-af9d-1ac3f77d6955";
    NSString* apiKey = @"aEDtVKqs0G0oGY7aSUxpTQ";
    
    [APRAppManager.sharedManager initializeWithAppKit:appKit andApiKey:apiKey];
    [APRAppManager.sharedManager showUpdateAlertOnController: self.window.rootViewController];
    
    return YES;
}

@end
