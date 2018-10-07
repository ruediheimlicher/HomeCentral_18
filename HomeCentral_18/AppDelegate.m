//
//  AppDelegate.m
//  HomeCentral_18
//
//  Created by Ruedi Heimlicher on 05.10.2018.
//  Copyright © 2018 Ruedi Heimlicher. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{
   NSLog(@"didFinishLaunchingWithOptions start");
   // Override point for customization after application launch.
   NSString* DataSuffix=@"ip.txt";
   //NSLog(@"StromDataVonHeute  DownloadPfad: %@ DataSuffix: %@",ServerPfad,DataSuffix);
   NSString* ServerPfad =@"https://www.ruediheimlicher.ch/Data";
   NSURL *URL = [NSURL URLWithString:[ServerPfad stringByAppendingPathComponent:DataSuffix]];
   NSLog(@"didFinishLaunchingWithOptions IP URL: %@",URL);
   NSStringEncoding *  enc=0;
   NSError* WebFehler=NULL;
   //
   //return YES; 
   NSMutableURLRequest* IPrequest = [NSMutableURLRequest requestWithURL:URL cachePolicy:0 timeoutInterval:10];
   NSURLResponse* response=nil;
   // http://hayageek.com/ios-nsurlsession-example
   NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration ephemeralSessionConfiguration];
   
   NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: self delegateQueue: [NSOperationQueue mainQueue]];
   
   [IPrequest setHTTPMethod:@"GET"];
   
   NSURLSessionDataTask * dataTask = [defaultSession dataTaskWithRequest:IPrequest];
   
   [dataTask resume];
   NSLog(@"didFinishLaunchingWithOptions end");
   return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application 
{
   NSLog(@"applicationWillResignActive: ");
   // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application 
{
   NSLog(@"applicationDidEnterBackground: ");
   // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
   // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application 
{
   NSLog(@"applicationWillEnterForeground: ");
   // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application 
{
   NSLog(@"applicationDidBecomeActive: ");
   // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application 
{
   NSLog(@"applicationWillTerminate: ");
   // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
