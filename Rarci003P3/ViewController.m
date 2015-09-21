//  PROGRAMMER: Roberto Arciniegas
//  PANTHERID: 1385020
//  CLASS:          COP 465501 TR 5:00
//  INSTRUCTOR:     Steve Luis  ECS 282
//  ASSIGNMENT:     #1 Tic - Tac - Toe
//  DUE:            Tuesday 09/22/15
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
         if ([self isWinner:positionIndex])
             myDisplay.text = @" is a winner";

    }
}

- (IBAction)resetPressed:(UIButton *)sender {
    
    for (int i = 0; i < 9; i++) {
    
        [[myButtons objectAtIndex:i] setTitle:@" " forState:UIControlStateNormal];
        myDisplay.text = @"";
        
    }
    self.inputCounter = 0;
    
}

- (BOOL)isWinner: (int) i{
    if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:0] currentTitle]]) &&
        ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:1] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:2] currentTitle] ]))
        return YES;
    else if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:3] currentTitle]]) &&
             ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:4] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:5] currentTitle] ]))
             return YES;
    else if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:6] currentTitle]]) &&
             ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:7] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:8] currentTitle] ]))
        return YES;
    else     if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:0] currentTitle]]) &&
                 ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:3] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:6] currentTitle] ]))
        return YES;
    else if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:1] currentTitle]]) &&
             ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:4] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:7] currentTitle] ]))
        return YES;
    else if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:2] currentTitle]]) &&
             ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:5] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:8] currentTitle] ]))
        return YES;
    else if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:0] currentTitle]]) &&
             ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:4] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:8] currentTitle] ]))
        return YES;
    else if (([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:2] currentTitle]]) &&
             ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:4] currentTitle]]) && ([[[myButtons objectAtIndex:i] currentTitle] isEqualToString:[[myButtons objectAtIndex:6] currentTitle] ]))
        return YES;
    else return NO;
}

@end
