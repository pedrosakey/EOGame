//
//  EOTurn.h
//  EOGame
//
//  Created by Pedro Sánchez Castro on 05/04/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, Selection) {
    Even,
    Odd,
    Unchosen,
    selection_error
};

typedef NS_ENUM(NSUInteger, Fingers) {
    Zero,
    One,
    Two,
    Three,
    Four,
    Five,
    fingers_error
};


@interface EOTurn : NSObject

@property (nonatomic) Fingers fingers;
@property (nonatomic) Selection selection;

- (instancetype)initWithSelection: (Selection)selection
                         numberOf: (Fingers)fingers;
- (instancetype)initWithOppositeSelection: (Selection)selection
                                 numberOf: (Fingers)fingers;
- (instancetype)initWithOppositeSelection: (Selection)selection;
- (BOOL) defeats: (EOTurn*) opponent;
- (NSString*)detailDescription;
- (NSString*)fingersDescription;

@end


