//
//  EOController.h
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOGame.h"

@interface EOController : NSObject

@property EOGame *game;

- (void) throwDown: (Selection) selection numberOfFingers: (Fingers) fingers;
- (NSString*) messageForGame: (EOGame*) game;

@end
