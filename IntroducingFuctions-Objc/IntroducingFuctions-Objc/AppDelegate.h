//
//  AppDelegate.h
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
- (NSString*)printIntroductions:(NSString*)name;

- (int)countdownTillIntroduction:(int)numberOfDays;

@end

