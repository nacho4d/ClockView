# README 

## Overview
**ClockView** is s simple class that will simulate an analog (or wall like) clock. ClockView makes use of various CALayers so it needs CoreAnimation (add QuartzCore.framework)

## How to use
It can be initialized with the default style:

    ClockView *clockView = [[ClockView alloc] initWithFrame:CGRectMake(0, 320, 100, 100)];
    [aView addSubview:clockView];
    [clockView start];
    ... do your thing here :)
    [clockView stop];
    [clockView release];

Or it can be customized:

    ClockView *clockView = [[ClockView alloc] initWithFrame:CGRectMake(-15, 0, 350, 350)];
    [clockView setClockBackgroundImage:[UIImage imageNamed:@"clock-background.png"].CGImage];
    [clockView setHourHandImage:[UIImage imageNamed:@"clock-hour-background.png"].CGImage];
    [clockView setMinHandImage:[UIImage imageNamed:@"clock-min-background.png"].CGImage];
    [clockView setSecHandImage:[UIImage imageNamed:@"clock-sec-background.png"].CGImage];
    [self.view addSubview:clockView];
    [clockView start];
    ... do your thing here :)
    [clockView stop];
    [clockView release];

Example of ClockView. 
*Big*: Customized style, 
*Small*: Default style"

![Example of ClockView](https://github.com/nacho4d/ClockView/blob/master/clock/Images/OutputSample.png?raw=true "Example of ClockView. Big:Customized style, Small:Default style")

##License

ClockView is under the MIT Licence:

Copyright (c) 2011 Guillermo Ignacio Enriquez Gutierrez, Nacho4d github.com/nacho4d

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

