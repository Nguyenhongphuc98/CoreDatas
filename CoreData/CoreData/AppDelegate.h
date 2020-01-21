//
//  AppDelegate.h
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

+ (NSManagedObjectContext *) getContext;
@end

