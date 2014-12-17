//
//  DGateClass.m
//  DGates
//
//  Created by Marvin Labrador on 12/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "DGateClass.h"

@implementation DGateClass

@synthesize delegate;

- (void)taskComplete
{
    if([self delegate] != nil)
        [[self delegate] taskComplete:YES];
}

- (void)doSomeTask
{
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(taskComplete) userInfo:nil repeats:YES];
}

@end
