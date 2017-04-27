//
//  SDTrackTool.m
//  sdtrack
//
//  Created by lisd on 2017/4/26.
//  Copyright © 2017年 kingnet. All rights reserved.
//

#import "SDTrackTool.h"
#import "UMMobClick/MobClick.h"

#define UMENG_KEY @"59015022c8957666fc000372"
@implementation SDTrackTool

+ (void)configure {

    UMConfigInstance.appKey = UMENG_KEY;
    UMConfigInstance.eSType = E_UM_NORMAL;
    UMConfigInstance.ePolicy = 0;
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *currentVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
    [MobClick setAppVersion:currentVersion];
    [MobClick startWithConfigure:UMConfigInstance];
    
#ifdef DEBUG
    [MobClick setLogEnabled:YES];
    [MobClick setCrashReportEnabled:NO];
#endif
}

+(void)sendEventId:(NSString*)eventId{
    
    //统一封装基础参数
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc]init];
//    [parameters setValue:[XYHttpClient sharedInstance].currentUser.UserName?[XYHttpClient sharedInstance].currentUser.UserName:@"Unknown" forKey:@"UserName"];
//    [parameters setValue:[BaseTool deviceString] forKey:@"设备型号"]; m
//    [parameters setValue:[TTDADeviceInfo deviceIdentifer] forKey:@"UDID"];
    
    //记录事件
    [MobClick event:eventId attributes:parameters];
}

+(void)beginLogPageID:(NSString *)pageID {
    [MobClick beginLogPageView:pageID];
}

+(void)endLogPageID:(NSString *)pageID {
    [MobClick endLogPageView:pageID];
}

+(void)logEvent:(NSString*)eventId {
//    [self sendEventId:eventId];
    [MobClick event:eventId];
}

@end
