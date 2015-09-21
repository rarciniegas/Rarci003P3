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

@property (nonatomic) int inputCounter;

@end

@implementation ViewController

@synthesize myButtons, myGameBoard, myDisplay;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myGameBoard = [[GameBoard alloc] init];
    for (int i = 0; i < 9; i++){
        [[myButtons objectAtIndex:i] setTitle:[myGameBoard.myChoice objectAtIndex:0] forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *) sender{
    
    int positionIndex = (int) sender.tag;
    
    if ([[[myButtons objectAtIndex:positionIndex] currentTitle] isEqualToString:@" "]) {
        self.inputCounter++;
        [[myButtons objectAtIndex:positionIndex] setTitle:[myGameBoard.myChoice objectAtIndex:1 + self.inputCounter%2] forState:UIControlStateNormal];
    }
}

- (IBAction)resetPressed:(UIButton *)sender {
    
    for (int i = 0; i < 9; i++) {
    
        [[myButtons objectAtIndex:i] setTitle:@" " forState:UIControlStateNormal];
        
    }
    self.inputCounter = 0;
    
}

@end
