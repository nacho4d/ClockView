//
//  ClockViewController.m
//  clock
//
//  Created by Enriquez Guillermo on 7/2/11.
//  Copyright 2011 Nacho4d. All rights reserved.
//  See the file License.txt for copying permission.
//

#import "ClockViewController.h"


@implementation ClockViewController

@synthesize clockView1, clockView2;

- (id)init
{
	self = [super initWithNibName:nil bundle:nil];
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"ClockViewController" bundle:nibBundleOrNil];
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	// Original clock images was taken from:
	// http://www.comparestoreprices.co.uk/wall-clocks/bliss-roman-aluminium-clock.asp
	// It can be found in Images folder: bliss-roman-aluminium-clock.jpg

    // clockViews were created in InterfaceBuilder but could be created programatically too:
    // ClockView clockView = [[ClockView alloc] initWithFrame: CGRectMake(...)]

	// We customize the background images of clockView1, while clockView2 has default background.
    [clockView1 setClockBackgroundImage:[UIImage imageNamed:@"clock-background.png"].CGImage];
	[clockView1 setHourHandImage:[UIImage imageNamed:@"clock-hour-background.png"].CGImage];
	[clockView1 setMinHandImage:[UIImage imageNamed:@"clock-min-background.png"].CGImage];
	[clockView1 setSecHandImage:[UIImage imageNamed:@"clock-sec-background.png"].CGImage];
	[clockView1 setSecHandContinuos:YES];

    // Set semi-transparent background so other clock view is semi-visible on landscape mode
    [clockView2 setBackgroundColor:[[UIColor whiteColor] colorWithAlphaComponent:0.65]];
}

- (void)viewWillAppear:(BOOL)animated
{
	//start the clock at current time
	[clockView1 start];
	[clockView2 start];
}

- (void)viewWillDisappear:(BOOL)animated
{
	//stop the clock
	[clockView1 stop];
	[clockView2 stop];
}

@end
