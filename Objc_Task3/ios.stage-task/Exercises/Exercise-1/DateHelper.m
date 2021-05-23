#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    if ( (monthNumber < 1) || (monthNumber > 13)) {
        return nil;
    }

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *monthString = dateFormatter.monthSymbols[(monthNumber-1)];
        
    return monthString;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
   
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
     NSDate * tempDate = [formatter dateFromString:date];
    
    [formatter setDateFormat:@"dd"];

    long dayOfYear = [[ formatter stringFromDate:tempDate] longLongValue];
    return dayOfYear;
    
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
         
    // US Russian Locale (ru_RU)
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    [dateFormatter setLocalizedDateFormatFromTemplate:@"E"]; // set template after setting locale
  //  NSLog(@"%@", [dateFormatter stringFromDate:date]);
    NSString *strDate = [dateFormatter stringFromDate:date];
   // [strDate [dateFormatter [stringFromDate: date]]];

    
    
    return strDate;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *dateNow = [NSDate date];

    if((long)[[calendar components: NSCalendarUnitWeekOfYear fromDate:date] weekOfYear] == (long)[[calendar components: NSCalendarUnitWeekOfYear fromDate:dateNow] weekOfYear]){
        return YES;
    }
    
    return NO;
}

@end

