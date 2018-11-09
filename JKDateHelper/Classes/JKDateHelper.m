//
//  JKDateHelper.m
//  JKDateHelper
//
//  Created by JackLee on 2018/11/9.
//

#import "JKDateHelper.h"
static NSDateFormatter *fullTimeDateFormatter = nil;

@implementation JKDateHelper

+ (NSString *)fullTimeStringFromDate:(NSDate *)date{
    if (fullTimeDateFormatter == nil) {
        fullTimeDateFormatter = [[NSDateFormatter alloc] init];
        [fullTimeDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    }
    return  [fullTimeDateFormatter stringFromDate:date];
}

+ (NSString *)dayStringFromDate:(NSDate *)date seperator:(NSString *)seperator{
    seperator = seperator?:@"/";
    NSString *formatterString = [NSString stringWithFormat:@"yyyy%@MM%@dd",seperator,seperator];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatterString];
   return  [dateFormatter stringFromDate:date];
}

+ (NSString *)timeStringFromDate:(NSDate *)date seperator:(NSString *)seperator{
    seperator = seperator?:@":";
    NSString *formatterString = [NSString stringWithFormat:@"HH%@mm%@ss",seperator,seperator];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatterString];
    return  [dateFormatter stringFromDate:date];
}

+ (NSDate *)dateFromTimeString:(NSString *)timeString formatString:(NSString *)formatString{
    if (!formatString || [formatString isEqualToString:@""] || ![[formatString class] isSubclassOfClass:[NSString class]]) {
        NSAssert(NO, @"formatString is wrong !!!");
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:timeString];
    return date;
}
@end
