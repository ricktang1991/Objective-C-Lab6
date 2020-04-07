//
//  GameController.m
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray *dices = [NSMutableArray new];
        Dice *d1 = [Dice new];
        Dice *d2 = [Dice new];
        Dice *d3 = [Dice new];
        Dice *d4 = [Dice new];
        Dice *d5 = [Dice new];
        [dices addObject:d1];
        [dices addObject:d2];
        [dices addObject:d3];
        [dices addObject:d4];
        [dices addObject:d5];
        _dices = dices;
    }
    return self;
}


- (NSMutableArray *)roll {
    for (int i = 0; i < _dices.count; i++) {
        Dice *dice = [_dices objectAtIndex:i];
        if ([dice held] == false) {
            Dice *d1 = [Dice new];
            [_dices replaceObjectAtIndex:i withObject:d1];
        }
    }
    return _dices;
}

- (NSMutableString *)storedDice {
    NSMutableString *stDice = [NSMutableString new];
    for (Dice *dice in _dices) {
        [stDice appendFormat:@"%@ ", [dice faceValue]];
    }
    return stDice;
}


- (NSString *)holdDieWithNumbers:(NSInteger) number {
    NSMutableString *hdDice = [NSMutableString new];
    for (int i = 0; i < _dices.count; i++) {
        Dice *dice = [_dices objectAtIndex:i];
        if (i == number - 1) {
            [dice setHeld:true];
        }
    }
    for (Dice *dice in _dices) {
        [hdDice appendFormat:@"%@ ", [dice faceValue]];
    }
    return hdDice;
}

- (NSString *)resetHold {
    NSMutableString *hdDice = [NSMutableString new];
    for (Dice *dice in _dices) {
        [dice setHeld:false];
        [hdDice appendFormat:@"%@ ", [dice faceValue]];
    }
    return hdDice;
}

- (NSString *)unheldDieWithNumbers:(NSInteger) number {
    NSMutableString *hdDice = [NSMutableString new];
    for (int i = 0; i < _dices.count; i++) {
        Dice *dice = [_dices objectAtIndex:i];
        if (i == number - 1) {
            [dice setHeld:false];
        }
    }
    for (Dice *dice in _dices) {
        [hdDice appendFormat:@"%@ ", [dice faceValue]];
    }
    return hdDice;
}

- (NSInteger)score {
    NSInteger result = 0;
    for (int i = 0; i < _dices.count; i++) {
        Dice *dice = [_dices objectAtIndex:i];
        if ([dice held] == true) {
            result += [dice value];
        }
    }
    return result;
}

- (NSInteger)totalScore {
    NSInteger result = 0;
    for (Dice *dice in _dices) {
        result += [dice value];
    }
    return result;
}

@end
