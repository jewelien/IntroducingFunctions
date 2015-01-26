//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
    [self countdownTillIntroduction: 4];
    
    NSString *myName = @"Julien";
    [self printIntroductions: myName];
    return YES;
}

// Define new functions here...
- (NSString*)printIntroductions:(NSString*)name {
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntroduction = [name stringByAppendingString: @" to moushimasu"];
    NSLog(@"%@, %@.", introduction, japaneseIntroduction);
    return 0;
}

- (int)countdownTillIntroduction:(int)numberOfDays {
    int oneLessDay = numberOfDays - 1;
    if (numberOfDays == 0) {
        NSLog(@"The time has come.");
    } else {
        NSLog(@"%d days left until introductions", numberOfDays);
        [self countdownTillIntroduction:oneLessDay];
    }
    return 0;
}

@end
