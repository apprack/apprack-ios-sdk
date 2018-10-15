//
//  APRSettingsControllerViewController.h
//  apprack.io iOS SDK
//
//  Created by apprack.io on 2017-09-10.
//  Copyright © 2018 apprack.io. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APRSettingsViewController : UIViewController

#pragma mark - private?

@property BOOL versionEnabled;
@property BOOL changelogEnabled;
@property BOOL supportEnabled;

@property BOOL twitterEnabled;
@property BOOL instagramEnabled;
@property BOOL facebookEnabled;
@property BOOL rateInAppStoreEnabled;

@property BOOL privacyPolicyEnabled;
@property BOOL legalTermsEnabled;

@property BOOL copyrightEnabled;
@property BOOL imprintEnabled;

@property (nonatomic, strong, nullable) UIColor* tintColor;



#pragma mark - Customize

/**
 flag to specify if the settings should link to your app's settings section in the iOS settings.app.
 If enabled it is only shown, if your app requests access to content whose access level can be changed in the settings.app (e.g. contact, calendars, location, ...)
 */
@property BOOL privacySettingsLinkEnabled;

/**
 background color for the controller
 */
@property (nonatomic, strong) UIColor* backgroundColor;

/**
 background color for cells
 */
@property (nonatomic, strong) UIColor* cellBackgroundColor;

/**
 border color for cells
 */
@property (nonatomic, strong) UIColor* borderColor;

/**
 color of the copyright information and imprint link
 */
@property (nonatomic, strong) UIColor* finePrintColor;

/**
 text color for cells
 */
@property (nonatomic, strong, nullable) UIColor* textColor;

/**
 specify the space between cells
 */
@property NSUInteger cellSpacing;

/**
 specify the space between sections
 */
@property NSUInteger sectionSpacing;

/**
 show build number together with version
 e.g.:
 if CFBundleShortVersionString = 1.0.0
 && CFBundleVersion = 42
 then 1.0.0 (42) will be shown if true
 
 default value is false
 */
@property BOOL buildNumberEnabled;

#pragma mark - Extend

/**
 add a predefined cell with custom content to the settings controller

 @param title cell title
 @return the UIView added
 */
- (UIView*)addCellWithTitle:(NSString*)title;

/**
 add a predefined cell with custom content and action to the settings controller

 @param title cell title
 @param handler to be performed on tap
 @return the UIView added
 */
- (UIView*)addCellWithTitle:(NSString*)title andCallbackHandler:(void (^__nullable)(void))handler;

/**
 add a predefined cell with custom content and action to the settings controller
 
 @param title cell title
 @param acessoryText accessory text
 @param handler to be performed on tap
 @return the UIView added
 */
- (UIView*)addCellWithTitle:(NSString*)title accessoryText:(NSString*)acessoryText andCallbackHandler:(void (^__nullable)(void))handler;

/**
 add a predefined cell with custom title and a switch

 @param title cell title
 @param isOn wether the switch is on or off
 @param handler to be called when the switch value changes
 @return the UIView added
 */
- (UIView*)addCellWithTitle:(NSString*)title switchValue:(BOOL)isOn andCallbackHandler:(void (^)(BOOL))handler;

/**
 add a descriptional text, e.g. further explain what a cell above does

 @param text the text to display
 @return the UILabel added
 */
- (UILabel*)addDescriptionalText:(NSString*)text;

/**
 add a predefined margin
 */
- (void)addSectionMargin;

/**
 Add a custom view to the settings controller

 @param view the custom view to add
 */
- (void)addCustomView:(UIView*)view;

@end

NS_ASSUME_NONNULL_END
