//
//  ViewController.h
//  Rarci003P3
//
//  Created by roberto arciniegas on 9/20/15.
//  Copyright (c) 2015 rarci003. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameBoard;

@interface ViewController : UIViewController

- (IBAction)buttonPressed:(id)sender;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *myButtons;

@property (strong, nonatomic) GameBoard * myGameBoard;



@property (strong, nonatomic) IBOutlet UILabel *myDisplay;

@end

