//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < index + 1; i ++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSNumber *fibOne = sequence[i-1];
            NSNumber *fibTwo = sequence[i-2];
            NSInteger fibOneInt = 0;
            NSInteger fibTwoInt = 0;
            fibOneInt = [fibOne integerValue];
            fibTwoInt = [fibTwo integerValue];
            NSInteger newFibInt = fibOneInt + fibTwoInt;
            NSNumber *newFib = @(newFibInt);
            [sequence addObject:newFib];
        }
    }
    return sequence;
}


@end
