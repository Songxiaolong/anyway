//
//  AppDelegate.m
//  NewProject
//
//  Created by along on 2017/5/5.
//  Copyright © 2017年 SongXiaolong. All rights reserved.
//

#import "AppDelegate.h"
#import "NewTool.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window= [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(setStatusBarOrientation:)]){
        SEL selector = NSSelectorFromString(@"setStatusBarOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIApplication instanceMethodSignatureForSelector:selector]];
        UIDeviceOrientation orentation = UIDeviceOrientationPortrait;
        [invocation setSelector:selector];
        [invocation setTarget:[UIApplication sharedApplication]];
        [invocation setArgument:&orentation atIndex:2];
        [invocation invoke];
    }
    
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    
    // Override point for customization after application launch.
    return YES;
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
    if (![NewTool autorotateTool].autorotate) {
        return UIInterfaceOrientationMaskPortrait;
    }
    return UIInterfaceOrientationMaskAll;
}


@end
