//
//  initServer.m
//  easyMeasure
//
//  Created by yongche on 17/5/23.
//  Copyright © 2017年 goldsmith. All rights reserved.
//

#import "initServer.h"

@implementation initServer
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      //加载网络配置文件
      //        [[UNICServerManager shareManager] loadSettingsConfig];

      //网络监听
      //        [[AFNetworkActivityIndicatorManager sharedManager]
      //        setEnabled:YES];
      //        [[AFNetworkReachabilityManager sharedManager]
      //        setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus
      //        status) {
      //            if (status == AFNetworkReachabilityStatusReachableViaWWAN ||
      //            status == AFNetworkReachabilityStatusReachableViaWiFi) {
      //                [[UNICOrderResendManager defaultInstance] startRetry];
      //            }
      //        }];
      //        [[AFNetworkReachabilityManager sharedManager] startMonitoring];

      // SDWebImage加载的数据类型
      [[[SDWebImageManager sharedManager] imageDownloader] setValue:@"text/html,application/xhtml+xml,application/"
                                                                    @"xml;q=0.9,image/webp,*/*;q=0.8"
                                                 forHTTPHeaderField:@"Accept"];

      //加载DDLog
      [DDLog addLogger:[DDASLLogger sharedInstance]];
      [DDLog addLogger:[DDTTYLogger sharedInstance]];
    });
}
@end
