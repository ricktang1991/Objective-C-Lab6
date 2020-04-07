//
//  Dice.h
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSInteger value;
@property BOOL held;

- (NSString *)faceValue;

@end

