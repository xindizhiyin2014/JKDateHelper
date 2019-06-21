//
//  JKDateHelper.m
//  JKDateHelper
//
//  Created by JackLee on 2018/11/9.
//

#import "JKDateHelper.h"

@implementation JKDateSeperator

@end

@implementation JKDateHelper

+ (NSString *)fullTimeStrFromDate:(NSDate *)date{
    JKDateSeperator *seperator = [JKDateSeperator new];
    seperator.yyyySeperator = @"/";
    seperator.MMSeperator = @"/";
    seperator.ddSeperator = @" ";
    seperator.HHSeperator = @":";
    seperator.mmSeperator = @":";
    
    return [self fullTimeStrFromDate:date seperator:seperator];
}

+ (NSString *)fullTimeStrFromDate:(NSDate *)date seperator:(JKDateSeperator *)seperator{
    NSString *formatterStr = [NSString stringWithFormat:@"yyyy%@MM%@dd%@HH%@mm%@ss",seperator.yyyySeperator,seperator.MMSeperator,seperator.ddSeperator,seperator.HHSeperator,seperator.mmSeperator];
    return [self stringFromDate:date formatStr:formatterStr];
}

+ (NSString *)dayStrFromDate:(NSDate *)date{
    JKDateSeperator *seperator = [JKDateSeperator new];
    seperator.yyyySeperator = @"/";
    seperator.MMSeperator = @"/";
    return [self dayStrFromDate:date seperator:seperator];
}

+ (NSString *)dayStrFromDate:(NSDate *)date seperator:(JKDateSeperator *)seperator{
    NSString *formatterStr = [NSString stringWithFormat:@"yyyy%@MM%@dd",seperator.yyyySeperator,seperator.MMSeperator];
    return [self stringFromDate:date formatStr:formatterStr];
}

+ (NSString *)timeStrFromDate:(NSDate *)date{
    JKDateSeperator *seperator = [JKDateSeperator new];
    seperator.HHSeperator = @":";
    seperator.mmSeperator = @":";
    return [self timeStrFromDate:date seperator:seperator];
}
+ (NSString *)timeStrFromDate:(NSDate *)date seperator:(JKDateSeperator *)seperator{
    NSString *formatterStr = [NSString stringWithFormat:@"HH%@mm%@ss",seperator.HHSeperator,seperator.mmSeperator];
    return [self stringFromDate:date formatStr:formatterStr];
}

+ (NSString *)stringFromDate:(NSDate *)date formatStr:(NSString *)formatStr{
    if (!formatStr || [formatStr isEqualToString:@""] || ![[formatStr class] isSubclassOfClass:[NSString class]]) {
        NSAssert(NO, @"formatString is wrong !!!");
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatStr];
    return  [dateFormatter stringFromDate:date];
}

+ (NSDate *)dateFromTimeStr:(NSString *)timeStr formatStr:(NSString *)formatStr{
    if (!formatStr || [formatStr isEqualToString:@""] || ![[formatStr class] isSubclassOfClass:[NSString class]]) {
        NSAssert(NO, @"formatString is wrong !!!");
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatStr];
    NSDate *date = [dateFormatter dateFromString:timeStr];
    return date;
}

+ (NSString *)constellationWithBirthDay:(NSDate *)birthDay{
    if (!birthDay) {
        return @"";
    }
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:birthDay];
    
    
    NSInteger month=[components month];
    NSInteger day=[components day];
    NSString * astroString = @"摩羯座水瓶座双鱼座白羊座金牛座双子座巨蟹座狮子座处女座天秤座天蝎座射手座摩羯座";
    
    NSString * astroFormat = @"102123444543";
    
    NSString * result;
    
    result = [NSString stringWithFormat:@"%@",[astroString substringWithRange:NSMakeRange(month * 3 - (day < [[astroFormat substringWithRange:NSMakeRange((month-1), 1)] intValue] - (-19))*3, 3)]];
    
    return result;
}

+ (NSInteger)ageWithBirthDay:(NSDate *)birthDay{
    if (!birthDay) {
        return 0;
    }
    NSInteger age = [[[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:[NSDate date]] year] - [[[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:birthDay] year];
    if (age < 0) {
        age = 0;
    }
    return age;
}
@end
