#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *resultStr = [[NSMutableString alloc] init];

    while ([string1 length] != 0 && [string2 length] != 0) {
        
        if ([string1 UTF8String][0] < [string2 UTF8String][0] || [string1 UTF8String][0] == [string2 UTF8String][0]) {
            [resultStr appendString: [string1 substringToIndex: 1]];
            string1 = [string1 substringFromIndex: 1];
        } else {
            [resultStr appendString: [string2 substringToIndex: 1]];
            string2 = [string2 substringFromIndex: 1];
        }    }

    [string1 length] == 0 ? [resultStr appendString: string2] : [resultStr appendString: string1] ;
    

    
    return resultStr;
}

@end
