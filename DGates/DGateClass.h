//
//  DGateClass.h
//  DGates
//
//  Created by Marvin Labrador on 12/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DGateClassDelegate <NSObject>

@required

- (void)taskComplete:(BOOL)complete;

@end


@interface DGateClass : NSObject

@property (nonatomic,weak) id<DGateClassDelegate> delegate;


//@property (nonatomic, assign) id delegate;

- (void)taskComplete;
- (void)doSomeTask;

@end
