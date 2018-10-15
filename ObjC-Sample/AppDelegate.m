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
    
    NSString* appKit = @"415a4162-f52a-4b7b-bc02-b582e535dc56";
    NSString* apiKey = @"4vzHzK6WaUsnonCG715QYQ";
    
    [APRAppManager.sharedManager initializeWithAppKit:appKit andApiKey:apiKey];
    [APRAppManager.sharedManager showUpdateAlertOnController: self.window.rootViewController];
    
    return YES;
}

@end
