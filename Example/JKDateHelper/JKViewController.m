//
//  JKViewController.m
//  JKDateHelper
//
//  Created by xindizhiyin2014 on 11/09/2018.
//  Copyright (c) 2018 xindizhiyin2014. All rights reserved.
//

#import "JKViewController.h"
#import <JKDateHelper/JKDateHelper.h>

@interface JKViewController ()

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    NSString *fullTimeString = [JKDateHelper fullTimeStrFromDate:[NSDate date]];
//    NSLog(@"fullTimeString %@",fullTimeString);
    
//    NSString *dayStr = [JKDateHelper dayStrFromDate:[NSDate date]];
//    NSLog(@"dayStr %@",dayStr);
    
//    NSString *timeStr = [JKDateHelper timeStrFromDate:[NSDate date]];
//    NSLog(@"timeStr %@",timeStr);
    NSString *timeStr = @"10:46:52";
    NSDate *date = [JKDateHelper dateFromTimeStr:timeStr formatStr:@"HH:mm:ss"];
    NSLog(@"date %@",date);
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
