//
//  InputHandler.m
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) getUserInputWithMaxLength:(int) maxLength withPrompt:(NSString *) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@", prompt);
    char inputNumber[maxLength];
    const char *result = fgets(inputNumber, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputNumber] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return NULL;
}
@end
