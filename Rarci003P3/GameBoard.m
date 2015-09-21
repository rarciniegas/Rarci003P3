//
//  GameBoard.m
//  Rarci003P3
//
//  Created by roberto arciniegas on 9/20/15.
//  Copyright (c) 2015 rarci003. All rights reserved.
//

#import "GameBoard.h"

@implementation GameBoard

@synthesize myChoice;

- (id) init
{
    self = [super init];
    if (self) {
        myChoice = [[NSArray alloc] initWithObjects:@"-", @"X", @"O", nil];
        
    }
        
    return self;
}

@end
