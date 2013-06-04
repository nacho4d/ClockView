//
//  AppDelegate.m
//  ClockViewSampleApp
//
//  Created by Enriquez Gutierrez Ignacio on 5/28/13.
//
//

#import "AppDelegate.h"

#import "ClockViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.viewController = [[ClockViewController alloc] init];
	self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
