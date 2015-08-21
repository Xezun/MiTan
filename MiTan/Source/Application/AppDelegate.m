//
//  AppDelegate.m
//  MiTan
//
//  Created by thl on 15/8/17.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "AppDelegate.h"
#import "WTbaseTabbarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    
    WTbaseTabbarController *con = [[WTbaseTabbarController alloc] init];
    _window.rootViewController = con;
    
        

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  
}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
 
}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end
