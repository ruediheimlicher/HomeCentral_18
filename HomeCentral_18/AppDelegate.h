//
//  AppDelegate.h
//  HomeCentral_18
//
//  Created by Ruedi Heimlicher on 05.10.2018.
//  Copyright © 2018 Ruedi Heimlicher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,NSURLSessionDelegate,NSURLSessionTaskDelegate,NSURLConnectionDelegate>

{
   IBOutlet id TabBar;
   NSData*receivedData;
}

@property (strong, nonatomic) UIWindow *window;


@end

