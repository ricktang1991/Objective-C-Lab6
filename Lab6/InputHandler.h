//
//  InputHandler.h
//  Lab6
//
//  Created by 桑染 on 2020-04-06.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

- (NSString *) getUserInputWithMaxLength:(int) maxLength withPrompt:(NSString *) prompt;

@end

