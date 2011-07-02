//
//  AppDelegate.h
//  clock
//
//  Created by Ignacio Enriquez Gutierrez on 1/31/11.
//  Copyright 2011 Nacho4D. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ClockViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ClockViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ClockViewController *viewController;

@end

