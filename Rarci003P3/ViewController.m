//
//  ViewController.m
//  Rarci003P3
//
//  Created by roberto arciniegas on 9/20/15.
//  Copyright (c) 2015 rarci003. All rights reserved.
//

#import "ViewController.h"
#import "GameBoard.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize myButtons, myGameBoard, myDisplay;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myGameBoard = [[GameBoard alloc] init];
    for (int i = 0; i < [myGameBoard.myColors count]; i++){
        [[myButtons objectAtIndex:i] setTitle:[myGameBoard.myColors objectAtIndex:i] forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
}
@end
