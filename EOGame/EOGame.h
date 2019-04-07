//
//  EOGame.h
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOTurn.h"


@interface EOGame : NSObject

@property (nonatomic) EOTurn *humanTurn;
@property (nonatomic) EOTurn *computerTurn;

- (instancetype) initWithHumanTurn: (EOTurn*) humanTurn
                      computerTurn: (EOTurn*) computerTurn;
- (EOTurn*) winner;
- (EOTurn*) looser;
- (NSString*) resultsString: (EOGame*) game;
@end

