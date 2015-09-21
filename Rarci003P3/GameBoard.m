//
//  GameBoard.m
//  Rarci003P3
//
//  Created by roberto arciniegas on 9/20/15.
//  Copyright (c) 2015 rarci003. All rights reserved.
//

#import "GameBoard.h"

@implementation GameBoard

@synthesize myColors;

- (id) init
{
    self = [super init];
    if (self) {
        myColors = [[NSArray alloc] initWithObjects:@" ", @"X", @"O", nil];
        
    }
        
    return self;
}

@end
