# EOGame
![version](https://img.shields.io/badge/objectiveC-iOS-purple.svg?maxAge=2592000)

![The EOGame](https://drive.google.com/uc?id=1DNBmrZ_Jwkcg8i_eN-0V4gSGKIMrPF6I)


## The Game

Odds and evens is a simple game of chance and hand game, involving two people simultaneously revealing a number of fingers and winning or losing depending on whether they are odd or even, or alternatively involving one person taking picking up coins or other small objects and hiding them in their closed hand, while another player guesses whether they have an odd or even number.

More in [Wikipedia](https://en.wikipedia.org/wiki/Odds_and_evens_(hand_game))

## Requeriments

- Players are a human player and a computer player
- Human player must choose a number of fingers.
- The human player can choose or let the computer chose if plays with Even or Odds
- Resume of results of the game

## Model

![The Model](https://drive.google.com/uc?id=1DQ6n_ahmW8bajyGFUyzUITA36nzDd9Cw)

## Objective C notes

All files in Objective are composed of two files public **interface** and **implementation**. Implementation imports interface.

Examples:
```
//  EOController.h

#import <Foundation/Foundation.h>
#import "EOGame.h"

@interface EOController : NSObject
:
:
:
@end
```

```
//  EOController.m


#import "EOController.h"

@implementation EOController
:
:
:
@end

```

Example of private interface (this snippet inside of implementation fil)

```
@interface EOTurn()
- (NSString*)selectionDescription;
@end
```

Properties must be defined in interface getters and setter automatically setup:

```
@property (nonatomic) Fingers fingers;
```

_(nonatomic)_ related to multithreading. By default all properties are atomic.

Concat string with NSStringformat:

```
[NSString stringWithFormat:@" You are %@ and show %@ fingers",self.selectionDescription, self.fingersDescription];
```

Get a ramdom unsigned integer between 0..4
```
NSUInteger ramdomNumber = arc4random_uniform(5);
```

We can add NSUInteger.

## References
[Objective C for Swift Developers](https://eu.udacity.com/course/objective-c-for-swift-developers--ud1009) by [Lyft](https://www.lyft.com/)

## License
MIT