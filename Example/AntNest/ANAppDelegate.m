//
//  ANAppDelegate.m
//  AntNest
//
//  Created by yuzhoulangzik@126.com on 03/07/2017.
//  Copyright (c) 2017 yuzhoulangzik@126.com. All rights reserved.
//

#import "ANAppDelegate.h"
#import "AntChannel.h"
#import "ANAntDes.h"
#import "AntProtocol.h"
#import "AntNest.h"

@implementation ANAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window .backgroundColor = [UIColor whiteColor];
  UIViewController<AntProtocol> *root = [AntChannel antWith:[[ANAntDes alloc] initWith:@"HomeAnt"]];
  self.window.rootViewController = root;
  
  [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
  
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler {
  [[AntNest sharedAntNest] application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
}

@end
