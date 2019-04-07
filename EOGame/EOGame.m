//
//  EOGame.m
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import "EOGame.h"

@implementation EOGame

- (instancetype) initWithHumanTurn: (EOTurn*) humanTurn
                      computerTurn: (EOTurn*) computerTurn {
    _humanTurn = humanTurn;
    _computerTurn = computerTurn;
    
    return self;
}

- (EOTurn*) winner {
    return [self.humanTurn defeats:self.computerTurn]? self.humanTurn:self.computerTurn;
}

- (EOTurn*) looser {
    return [self.humanTurn defeats:self.computerTurn]? self.computerTurn:self.humanTurn;
}

- (NSString*) resultsString: (EOGame*) game {
    return [self.humanTurn defeats:self.computerTurn]?@"You win":@"You loose";
}

@end
