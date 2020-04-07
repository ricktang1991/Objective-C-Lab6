//
//  GameController.h
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

@interface GameController : NSObject

@property NSMutableArray *dices;
@property NSMutableArray *heldDices;

- (NSMutableArray *)roll;
- (NSMutableArray *)storedDice;
- (NSString *)holdDieWithNumbers:(NSInteger) numbers;
- (NSString *)resetHold;
- (NSString *)unheldDieWithNumbers:(NSInteger) number;
- (NSInteger)score;
- (NSInteger)totalScore;

@end

