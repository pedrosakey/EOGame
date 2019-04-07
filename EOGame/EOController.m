//
//  EOController.m
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import "EOController.h"

@implementation EOController

- (void) throwDown: (Selection) selection
   numberOfFingers: (Fingers) fingers {
    EOTurn *computerTurn;
    EOTurn *humanTurn;

    // Generate computer option
    if (selection == Unchosen) {
        // We generate computer Turn first
        computerTurn = [[EOTurn alloc] init];
         humanTurn= [[EOTurn alloc] initWithOppositeSelection:computerTurn.selection numberOf:fingers];
    } else {
        // Create human turn first
        humanTurn= [[EOTurn alloc] initWithSelection:selection numberOf:fingers];
        computerTurn = [[EOTurn alloc] initWithOppositeSelection:humanTurn.selection];
    }
    
    // Instance the game
    EOGame *game = [[EOGame alloc] initWithHumanTurn:humanTurn computerTurn:computerTurn];
    
    self.game = game;
    
}
- (NSString*) messageForGame: (EOGame*) game {
    
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game looser] description];
    NSString *resultsString = [game resultsString: game];
    
    NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];

    return wholeString;
}



@end
