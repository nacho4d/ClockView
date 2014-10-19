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
	[clockView1 setSecHandContinuos:YES];

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

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

	// This is just to make the sample look nicer. This could be done easier with
	// AutoLayout but it is not available in iOS5, again, this is just for this example
	const CGSize size1 = self.clockView1.frame.size;
	const CGSize size2 = self.clockView2.frame.size;

	if (UIInterfaceOrientationIsPortrait(self.interfaceOrientation)) {
		float verticalSeparation = (self.view.bounds.size.height - size1.height - size2.height)/3.0;
		self.clockView1.frame = CGRectMake((self.view.bounds.size.width - size1.width)/2,
										   verticalSeparation,
										   size1.width,
										   size1.height);
		self.clockView2.frame = CGRectMake((self.view.bounds.size.width - size2.width)/2,
										   verticalSeparation*2 + size1.height,
										   size2.width,
										   size2.height);
	} else {
		float horizontalSeparation = (self.view.bounds.size.width - size1.width - size2.width)/3;
		self.clockView1.frame = CGRectMake(horizontalSeparation,
										   (self.view.bounds.size.height - size1.height)/2,
										   size1.width,
										   size1.height);
		self.clockView2.frame = CGRectMake(horizontalSeparation*2 + size1.width,
										   (self.view.bounds.size.height - size2.height)/2,
										   size2.width,
										   size2.height);
	}
}

@end
