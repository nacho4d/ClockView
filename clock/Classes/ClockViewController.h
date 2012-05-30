//
//  ClockViewController.h
//  clock
//
//  Created by Enriquez Guillermo on 7/2/11.
//  Copyright 2011 Nacho4d. All rights reserved.
//  See the file License.txt for copying permission.
//

#import <UIKit/UIKit.h>
#import "ClockView.h"

@interface ClockViewController : UIViewController 
{
}

@property (nonatomic, strong) ClockView *clockView1;
@property (nonatomic, strong) ClockView *clockView2;

@end