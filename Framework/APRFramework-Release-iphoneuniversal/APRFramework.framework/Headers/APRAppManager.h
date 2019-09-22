//
//  APRAppManager.h
//  APRFramework
//
//  Created by apprack.io on 2017-05-30.
//  Copyright © 2018 apprack.io. All rights reserved.
//

@import Foundation;
@import UIKit;
@class APRSettingsViewController;

@interface APRAppManager : NSObject

extern NSString* _Nonnull const APRSDKVersionString;

///**
// The App Store identifier of the app in question
// */
//@property (nonatomic, strong, readonly) NSString* _Nullable appId;
/**
 App Kit Identifier used to authenticate with AppRack
 */
@property (nonatomic, strong, readonly) NSString* _Nullable appKit;
/**
 The token used to authenticate with AppRack
 */
@property (nonatomic, strong, readonly) NSString* _Nullable apiKey;
/**
 Returns YES if the app manager is correctly initialized and ready to use
 */
@property (readonly, getter=isInitialized) BOOL initialized;
/**
 The first launch of the app with the AppRack SDK installed
 */
@property (nonatomic, strong, readonly) NSDate* _Nonnull firstLaunchDate;
/**
 NSUserdefault Object to save SDK infos locally
 */
@property (nonatomic, strong, readonly) NSUserDefaults* _Nonnull defaults;
/**
 UIViewController object to present the changelog
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull changelogViewController;
/**
 UIViewController object to present the latest release notes
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull releaseNoteViewController;
/**
 UIViewController object to present the privacy policy
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull privacyViewController;
/**
 UIViewController object to present the terms of use
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull termsViewController;
/**
 UIViewController object to present the legal terms / eula / disclaimer / etc.
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull legalViewController;
/**
 UIViewController object to present the imprint
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull imprintViewController;
/**
 UIViewController object to present the settings screen
 */
@property (nonatomic, strong, readonly) APRSettingsViewController* _Nonnull settingsViewController;
/**
 UIViewController object to present a support mail form
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull supportViewController;
/**
 UIViewController object to present your helpdesk
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull helpdeskViewController;
/**
 UIViewController object to show licenses of libraries you use in your app
 */
@property (nonatomic, strong, readonly) UIViewController* _Nonnull licenseViewController;

/**
 Preferred way to access APRAppManager

 @return APRAppManager singleton
 */
+ (instancetype _Nonnull)sharedManager;

/**
 Initialize the App Manager

 @param appKit Your personal AppKit Identifier
 @param key Your personal API Key
 */
- (void)initializeWithAppKit:(NSString* _Nonnull)appKit andApiKey:(NSString* _Nonnull)key;

/**
 Initialize the App Manager
 
 @param appKit Your personal AppKit Identifier
 @param key Your personal API Key
 @param completion Completion Block
 */
- (void)initializeWithAppKit:(NSString* _Nonnull)appKit andApiKey:(NSString* _Nonnull)key withCompletion:(void (^_Nonnull)(NSError* _Nullable))completion;

/**
 check if the current running version is the latest on the App Store available version

 @warning app manager must be initialized correctly. When in doubt verify that @c isInitialized.
 */
- (BOOL)isCurrentVersion;

/**
 Open the App Store on the page of the current app
 */
- (void)viewInStore;

/**
 Show a share sheet allowing to share a link to the app

 @param controller the controller which will present the share sheet
 */
- (void)displayShareSheetOnController:(UIViewController* _Nonnull)controller;

/**
 If there is an newer version available on the App Store, this will present an alert telling the user that an update is available.
 
 @param controller the controller which will present the alert.
 */
- (void)showUpdateAlertOnController:(UIViewController* _Nonnull)controller;

/**
 Call this method when it is a good point to display the review alert to the user.
 Keep in mind, even if all checks (days since first launch, etc.) are valid, it is still not guaranteed that the review alert is shown.
 Apple limits the display of the alert to about three times per year!
 */
- (void)shouldRequestReview;

@end
