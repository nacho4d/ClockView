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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	//Original clock images was taken from:
	// http://www.comparestoreprices.co.uk/wall-clocks/bliss-roman-aluminium-clock.asp
	// It can be found in Images folder: bliss-roman-aluminium-clock.jpg
		
	// We customize the background images of clockView1, while clockView2 has default background.
    [clockView1 setClockBackgroundImage:[UIImage imageNamed:@"clock-background.png"].CGImage];
	[clockView1 setHourHandImage:[UIImage imageNamed:@"clock-hour-background.png"].CGImage];
	[clockView1 setMinHandImage:[UIImage imageNamed:@"clock-min-background.png"].CGImage];
	[clockView1 setSecHandImage:[UIImage imageNamed:@"clock-sec-background.png"].CGImage];

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

- (void)viewDidUnload
{
	[super viewDidUnload];
	self.clockView1 = nil;
	self.clockView2 = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
