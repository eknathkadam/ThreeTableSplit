//
//  threetableAppDelegate.h
//  threetable
//
//  Created by Eknath Kadam on 7/29/11.
//  Copyright 2011 Webrich Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ThreeTableViewController;

@interface ThreeTableAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain)  ThreeTableViewController *viewController;

@end
