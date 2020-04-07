//
//  main.m
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputhandler = [InputHandler new];
        GameController *gameController = [GameController new];
        NSInteger rollCount = 5;
        
        while (rollCount > 0) {
            NSString *option = [inputhandler getUserInputWithMaxLength:255 withPrompt:@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'unheld' to unheld a dice\n'done' to end the game\n'display' to show current stats"];
            if ([option isEqual:@"roll\n"]) {
                rollCount--;
                [gameController roll];
                NSLog(@"Remaining Rolls: %ld",(long)rollCount);
                NSLog(@"--  Current Dice");
                NSLog(@"%@", [gameController storedDice]);
                NSLog(@"--  Total Score");
                if (rollCount != 0) {
                    NSLog(@"Score: %ld", (long)[gameController score]);
                } else {
                    NSLog(@"Score: %ld", (long)[gameController totalScore]);
                    NSLog(@"Game is over!");
                }
            }
            if ([option isEqual:@"hold\n"]) {
                NSString *holdInput = [inputhandler getUserInputWithMaxLength:255 withPrompt:@"Enter the number of the die:"];
                NSLog(@"Remaining Rolls: %ld",(long)rollCount);
                NSLog(@"--  Current Dice");
                NSLog(@"%@", [gameController holdDieWithNumbers:[holdInput integerValue]]);
                NSLog(@"--  Total Score");
                NSLog(@"Score: %ld", (long)[gameController score]);
            }
            if ([option isEqual:@"reset\n"]) {
                NSLog(@"Remaining Rolls: %ld",(long)rollCount);
                NSLog(@"--  Current Dice");
                NSLog(@"%@", [gameController resetHold]);
                NSLog(@"--  Total Score");
                NSLog(@"Score: %ld", (long)[gameController score]);
            }
            if ([option isEqual:@"unheld\n"]) {
                NSString *unheldInput = [inputhandler getUserInputWithMaxLength:255 withPrompt:@"Enter the number of the die to unheld:"];
                NSLog(@"Remaining Rolls: %ld",(long)rollCount);
                NSLog(@"--  Current Dice");
                NSLog(@"%@", [gameController unheldDieWithNumbers:[unheldInput integerValue]]);
                NSLog(@"--  Total Score");
                NSLog(@"Score: %ld", (long)[gameController score]);
            }
            if ([option isEqual:@"done\n"]) {
                NSLog(@"Game is over!");
                break;
            }
        }
    }
    return 0;
}
