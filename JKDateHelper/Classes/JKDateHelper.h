//
//  JKDateHelper.h
//  JKDateHelper
//
//  Created by JackLee on 2018/11/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKDateSeperator : NSObject
@property (nonatomic,copy) NSString *yyyySeperator;   ///< 年份分隔符
@property (nonatomic,copy) NSString *MMSeperator;     ///< 月份分隔符
@property (nonatomic,copy) NSString *ddSeperator;     ///< 日分隔符
@property (nonatomic,copy) NSString *HHSeperator;     ///< 小时分隔符
@property (nonatomic,copy) NSString *mmSeperator;     ///< 分钟分隔符

@end

@interface JKDateHelper : NSObject

/**
 根据date将日期转换为格式：yyyy/MM/dd HH:mm:ss

 @param date 日期
 @return 日期字符串
 */
+ (NSString *)fullTimeStrFromDate:(NSDate *)date;

/**
 根据seperator配置将日期转换为指定的格式,包含年,月,日,时,分,秒

 @param date 日期
 @param seperator 分割参数
 @return 日期字符串
 */
+ (NSString *)fullTimeStrFromDate:(NSDate *)date seperator:(JKDateSeperator *)seperator;

/**
 根据date将日期转换为格式:yyyy/MM/dd

 @param date 日期
 @return 指定格式的字符串
 */
+ (NSString *)dayStrFromDate:(NSDate *)date;

/**
 根据date将日期转换为格式：yyyy 分割符 MM 分隔符 dd  比如: yyyy/MM/dd
 
 @param date 日期
 @param seperator 分割参数
 @return 指定格式的字符串
 */
+ (NSString *)dayStrFromDate:(NSDate *)date seperator:(JKDateSeperator *)seperator;

/**
 根据date将日期转换为格式:HH:mm:ss

 @param date 日期
 @return 指定格式的字符串
 */
+ (NSString *)timeStrFromDate:(NSDate *)date;
/**
 根据date将日期转换为格式, 例如: HH:mm:ss
 
 @param date 日期
 @param seperator 分隔参数
 @return 指定格式的字符串
 */
+ (NSString *)timeStrFromDate:(NSDate *)date seperator:(JKDateSeperator *)seperator;

/**
 将日期转换为指定格式的字符串

 @param date 日期
 @param formatStr 指定格式
 @return 指定格式的字符串
 */
+ (NSString *)stringFromDate:(NSDate *)date formatStr:(NSString *)formatStr;
/**
 将指定格式的字符串转换为date

 @param timeStr 日期字符串
 @param formatStr 格式字符串
 @return date对象
 */
+ (NSDate *)dateFromTimeStr:(NSString *)timeStr formatStr:(NSString *)formatStr;

/**
 根据生日计算星座

 @param birthDay 生日
 @return 星座
 */
+ (NSString *)constellationWithBirthDay:(NSDate *)birthDay;


/**
 根据生日计算年龄

 @param birthDay 生日
 @return 年龄
 */
+ (NSInteger)ageWithBirthDay:(NSDate *)birthDay;

@end

NS_ASSUME_NONNULL_END
