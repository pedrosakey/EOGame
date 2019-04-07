//
//  main.m
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        // Start the game with controller
        EOController *controller = [[EOController alloc] init];
        
        // Human choose. You can change these options!E
        [controller throwDown:Unchosen numberOfFingers:Three];
        
        NSString *resultsMessage;
        

        NSLog(@"### The EOGame ###\n");
        NSLog(@">>> Human Player\n");
        NSLog(@"%@", controller.game.humanTurn.detailDescription);
        NSLog(@">>> Computer Player\n");
        NSLog(@"%@",controller.game.computerTurn.detailDescription);
       
        NSLog(@">>> RESULTS\n");
        NSLog(@"%@ + %@ --> %@", controller.game.humanTurn.fingersDescription,
                                      controller.game.computerTurn.fingersDescription,
                                      controller.game.winner.description);
        NSLog(@"----------------------\n");
        // Results fo the game
         resultsMessage = [controller messageForGame:controller.game];
        
        NSLog(@"%@", resultsMessage);
        
    }
    return 0;
}
