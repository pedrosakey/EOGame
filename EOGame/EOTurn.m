//
//  EOTurn.m
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import "EOTurn.h"

@interface EOTurn()
- (NSString*)selectionDescription;
@end


@implementation EOTurn

- (instancetype) init {
    self = [super init];
    if (self){
        _selection = [self ramdomSelection];
        _fingers = [self ramdomFingers];
    }
    return self;
}

- (instancetype)initWithSelection: (Selection)selection
                          numberOf: (Fingers)fingers {
    self = [super init];
    
    if (self){
        _selection = selection;
        _fingers = fingers;
      
    }
    return self;
}

- (instancetype)initWithOppositeSelection: (Selection)selection
                         numberOf: (Fingers)fingers {
    self = [super init];
    
    if (self){
        _selection = selection==Even?Odd:Even;
        _fingers = fingers;
        
    }
    return self;
}

- (instancetype)initWithOppositeSelection: (Selection)selection {
    self = [super init];
    
    if (self){
        _selection = selection==Even?Odd:Even;
        _fingers = [self ramdomFingers];
        
    }
    return self;
}


-(Fingers) ramdomFingers {
    NSUInteger ramdomNumber = arc4random_uniform(6);
    
    switch(ramdomNumber){
        case 0:
            return Zero;
            break;
        case 1:
            return One;
            break;
        case 2:
            return Two;
            break;
        case 3:
            return Three;
            break;
        case 4:
            return Four;
            break;
        case 5:
            return Five;
            break;
        default:
            return fingers_error;
            break;
    }
}

- (Selection) ramdomSelection {
    NSUInteger ramdomNumber = arc4random_uniform(2);
    
    switch (ramdomNumber) {
        case 0:
            return Even;
            break;
        case 1:
            return Odd;
            break;
        default:
            return selection_error;
            break;
    }

}

- (BOOL) defeats:(EOTurn*)opponent {
    // Result of game, myfinger + opponents finger is ever or odd?
    int totalFingers = self.fingers + opponent.fingers;
    Selection gameWinner;
    
    if (totalFingers % 2 == 0) {
        gameWinner = Even;
    } else {
        gameWinner = Odd;
    }
    //Return who wins
    return self.selection == gameWinner?true :false;
}

- (NSString*)selectionDescription {
    if (self.selection == Even) {
        return @"Even";
    } else {
        return @"Odd";
    }
}

- (NSString*)fingersDescription{
    switch (self.fingers) {
        case Zero:
            return @"0";
            break;
        case One:
            return @"1";
            break;
        case Two:
            return @"2";
            break;
        case Three:
            return @"3";
            break;
        case Four:
            return @"4";
            break;
        case Five:
            return @"5";
            break;
        default:
            return @"Invalid";
            break;
    }
    
}

- (NSString*)detailDescription {    
     return [NSString stringWithFormat:@" You are %@ and show %@ fingers",self.selectionDescription, self.fingersDescription];
}

- (NSString*)description {
    return (self.selection==Even)?@"Even":@"Odd";
}

@end
