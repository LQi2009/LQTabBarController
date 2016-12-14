//
//  AppDelegate.m
//  LZTabBarController
//
//  Created by Artron_LQQ on 2016/12/12.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "AppDelegate.h"
#import "LZTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    LZTabBarController *tab = [LZTabBarController createTabBarController:^LZTabBarConfig *(LZTabBarConfig *config) {
        
        FirstViewController *homeVC = [[FirstViewController alloc] init];

        SecondViewController *mapVC = [[SecondViewController alloc] init];

        ThirdViewController *homeVC1 = [[ThirdViewController alloc] init];

        FourViewController *aboutVC = [[FourViewController alloc] init];
        aboutVC.view.backgroundColor = [UIColor orangeColor];
        
        
        config.viewControllers = @[homeVC, mapVC, aboutVC,homeVC1];
        
//        config.normalImages = @[@"tabbar_mainframe", @"tabbar_contacts", @"tabbar_discover",@"tabbar_me"];
        config.titles = @[@"微信",@"通讯录",@"发现",@"我"];
        
        config.selectedImages = @[@"tabbar_mainframeHL", @"tabbar_contactsHL", @"tabbar_discoverHL",@"tabbar_meHL"];
        
        config.isNavigation = NO;
        return config;
    }];
    
    // 为了能够使用hidesBottomBarWhenPushed, 不直接把tabBar设置为window的跟视图, 而是设置为导航的rootvc, 然后把导航设置为window的跟视图
    // 这样, 在子视图上就不用再添加导航了, 即设置: config.isNavigation = NO;
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:tab];
    
    nav.hidesBottomBarWhenPushed = YES;
    self.window.rootViewController = nav;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
