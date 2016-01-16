//
//  AppDelegate.m
//  MusigmaIncSNotificationJ4S
//

#import "AppDelegate.h"

#import "BeaconNotificationsManager.h"

@interface AppDelegate ()

@property (nonatomic) BeaconNotificationsManager *beaconNotificationsManager;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [ESTConfig setupAppID:@"musigma-inc-s-notification-j4s" andAppToken:@"9ddb7a0ccd6ec7b371e898e80e096b1b"];
NSLog(@"=========ssssssss======");
    self.beaconNotificationsManager = [BeaconNotificationsManager new];
    [self.beaconNotificationsManager enableNotificationsForBeaconID:
   //  [[BeaconID alloc] initWithUUIDString:@"B9407F30-F5F8-466E-AFF9-25556B57FE6D" major:7542 minor:40506]
    // enterMessage:@"Welcome to Musigma. Have Fun in Lab.Please take a guided tour of our office by clicking on the below link http://www.mu-sigma.com/"
     //exitMessage:@"Goodbye. Hope you had great time at Mu Sigma. Please visit us again"
     //];
     
    // NOTE: "exit" event has a built-in delay of 30 seconds, to make sure that the user has really exited the beacon's range. The delay is imposed by iOS and is non-adjustable.
     [[BeaconID alloc] initWithUUIDString:@"B9407F30-F5F8-466E-AFF9-25556B57FE6D" major:7542 minor:40506]
                                                       enterMessage:@"Welcome to Walmart. Enjoy your shopping with us today. Today you get Please take a guided tour of our office by clicking on the below link http://www.walmart.com"
                                                        exitMessage:@"Goodbye. Hope you had great time shopping with us. We will try our best to help you save your money.Please visit us again."
     
     ];
    
    
 /*   self.beaconNotificationsManager = [BeaconNotificationsManager new];
     [self.beaconNotificationsManager enableNotificationsForBeaconID:
     
     
     //ICE*************************
     // NOTE: "exit" event has a built-in delay of 30 seconds, to make sure that the user has really exited the beacon's range. The delay is imposed by iOS and is non-adjustable.
     [[BeaconID alloc] initWithUUIDString:@"B9407F30-F5F8-466E-AFF9-25556B57FE6D" major:60944 minor:59572]
     enterMessage:@"hahahahahaha"
     exitMessage:@"BUHUHUHUHUHUHUHUHUHUHUHU**************************"
     ];*/
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
