//  PROGRAMMER: Roberto Arciniegas
//  PANTHERID: 1385020
//  CLASS:          COP 465501 TR 5:00
//  INSTRUCTOR:     Steve Luis  ECS 282
//  ASSIGNMENT:     #1 Tic - Tac - Toe
//  DUE:            Tuesday 09/22/15
//
//  GameBoard.h
//  Rarci003P3
//
//  Created by roberto arciniegas on 9/20/15.
//  Copyright (c) 2015 rarci003. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameBoard : NSObject {
    
    NSArray * myChoice;
}

@property (strong, nonatomic) NSArray * myChoice;

@end
