#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    
    NSInteger counter = 0;
    NSInteger n = ratingArray.count;
    
    if (ratingArray.count <= 2 || ratingArray == nil) {
        return  0;
    }
    
    for (NSInteger i = 0; i < ratingArray.count - 2 ; i++) {
        for (NSInteger j = 1; j < ratingArray.count - 1 ; j++) {
            for (NSInteger k = 2; k < ratingArray.count ; k++) {
                
                
                if (([ratingArray[i] intValue] < [ratingArray[j] intValue ]) && ([ratingArray[j] intValue ] < [ratingArray[k] intValue ]))   {
                    NSLog(@"%d", [ratingArray[i] intValue]);
                    NSLog(@"%d", [ratingArray[j] intValue]);
                    NSLog(@"%d", [ratingArray[k] intValue]);
                    
                    if ((0 <= i) && (i < j) && (j < k) && (k < n)) {
                        counter += 1;
                    }
                    
                } else if (([ratingArray[i] intValue] > [ratingArray[j] intValue ]) && ([ratingArray[j] intValue ] > [ratingArray[k] intValue ])) {
                    
                    
                    if ((0 <= i) && (i < j) && (j < k) && (k < n)){
                        counter += 1;
                    }
                    
                }
                                
            }
        }
    }
    
    
    
    
    
    return counter;
}

@end
