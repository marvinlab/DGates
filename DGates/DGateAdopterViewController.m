//
//  DGateAdopterViewController.m
//  DGates
//
//  Created by Marvin Labrador on 12/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "DGateAdopterViewController.h"
#import "DGateClass.h"

@interface DGateAdopterViewController ()
{
    DGateClass *DGate;
}
@property (weak, nonatomic) IBOutlet UILabel *statusLbl;

@end

@implementation DGateAdopterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    DGate = [[DGateClass alloc] init];
    DGate.delegate = self;
    [DGate doSomeTask];
    _statusLbl.text = @"Timer Started";
}

- (void)taskComplete:(BOOL)complete
{
    if(complete)
    {
        _statusLbl.text = @"Complete";
    }
    else
        NSLog(@"Boo!");
}

@end
