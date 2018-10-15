//
//  ViewController.m
//  AppRack SDK ObjC Sample
//
//  Copyright © 2018 apprack.io. All rights reserved.
//

#import "ViewController.h"
#import <APRFramework/APRFramework.h>

@implementation ViewController

- (IBAction)showChangeLog {
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:APRAppManager.sharedManager.changelogViewController];
    [self presentViewController:navigation animated:YES completion:nil];
}

- (IBAction)showImprint {
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:APRAppManager.sharedManager.imprintViewController];
    [self presentViewController:navigation animated:YES completion:nil];
}

- (IBAction)showSettings {
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:APRAppManager.sharedManager.settingsViewController];
    [self presentViewController:navigation animated:YES completion:nil];
}

- (IBAction)showCustomizedSettings {
    APRSettingsViewController* settingsController = APRAppManager.sharedManager.settingsViewController;
    
    // customize it
    settingsController.backgroundColor = UIColor.grayColor;
    settingsController.cellBackgroundColor = UIColor.darkGrayColor;
    settingsController.textColor = UIColor.whiteColor;
    settingsController.tintColor = UIColor.yellowColor;
    
    // extend it
    [settingsController addSectionMargin];
    [settingsController addCellWithTitle:@"Title Text"];
    
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    imageView.image = [UIImage imageNamed:@"sample"];
    [imageView.heightAnchor constraintEqualToConstant:44].active = YES;
    [imageView.widthAnchor constraintEqualToConstant:44].active = YES;
    [settingsController addView:imageView];
    
    [settingsController addCellWithTitle:@"Title Text" accessoryText:@"Accessory Text" andCallbackHandler:^{
        NSLog(@"Do something on selection.");
    }];
    
    [settingsController addCellWithTitle:@"Switch" switchValue:YES andCallbackHandler:^(BOOL isOn) {
        NSLog(@"Do something on value change. Switch is %@ now.", isOn ? @"on" : @"off");
    }];
    [settingsController addDescriptionalText:@"To switch the switch just switch the switch."];
    
    // present it
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:settingsController];
    
    // In your app the navigation bar can be customized here, or prefereably using UIAppearence.
    navigation.navigationBar.barTintColor = settingsController.cellBackgroundColor;
    navigation.navigationBar.tintColor = settingsController.tintColor;
    navigation.navigationBar.translucent = NO;
    navigation.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: settingsController.textColor};
    navigation.navigationBar.largeTitleTextAttributes = @{NSForegroundColorAttributeName: settingsController.textColor};
    
    [self presentViewController:navigation animated:YES completion:nil];
}

@end
