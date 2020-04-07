//
//  Dice.m
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _value = 1 + arc4random() % 6;
        _held = false;
    }
    return self;
}

- (NSString *)faceValue {
    switch (_value) {
        case 1:
            if (_held == true) {
                return @"[⚀]";
            } else {
                return @"⚀";
            }
        case 2:
        if (_held == true) {
            return @"[⚁]";
        } else {
            return @"⚁";
        }
        case 3:
            if (_held == true) {
                return @"[⚂]";
            } else {
                return @"⚂";
            }
        case 4:
            if (_held == true) {
                return @"[⚃]";
            } else {
                return @"⚃";
            }
        case 5:
            if (_held == true) {
                return @"[⚄]";
            } else {
                return @"⚄";
            }
        case 6:
            if (_held == true) {
                return @"[⚅]";
            } else {
                return @"⚅";
            }
        default:
                return @"Invalid Die";
            break;
    }
}

@end
