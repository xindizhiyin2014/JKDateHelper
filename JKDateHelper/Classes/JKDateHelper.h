//
//  JKDateHelper.h
//  JKDateHelper
//
//  Created by JackLee on 2018/11/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKDateHelper : NSObject

/**
 根据date将日期转换为格式：yyyy/MM/dd HH:mm:ss

 @param date 日期
 @return 日期字符串
 */
+ (NSString *)fullTimeStringFromDate:(NSDate *)date;

/**
 根据date将日期转换为格式：yyyy 分割符 MM 分隔符 dd  比如: yyyy/MM/dd

 @param date 日期
 @param seperator 分割字符
 @return 指定格式的字符串
 */
+ (NSString *)dayStringFromDate:(NSDate *)date seperator:(NSString *)seperator;

/**
 根据date将日期转换为格式:HH分隔符mm分隔符ss 例如: HH:mm:ss

 @param date 日期
 @param seperator 分隔符
 @return 指定格式的字符串
 */
+ (NSString *)timeStringFromDate:(NSDate *)date seperator:(NSString *)seperator;
/**
 将指定格式的字符串转换为date

 @param timeString 日期字符串
 @param formatString 格式字符串
 @return date对象
 */
+ (NSDate *)dateFromTimeString:(NSString *)timeString formatString:(NSString *)formatString;

@end

NS_ASSUME_NONNULL_END
