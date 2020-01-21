//
//  DepartmentMO+CoreDataClass.m
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import "DepartmentMO+CoreDataClass.h"
#import "AppDelegate.h"

@implementation DepartmentMO

+ (DepartmentMO *)insertNewDepartmentWithAddress:(NSString *)address city:(NSString *)city name:(NSString *)name zipcode:(int32_t)zip {
    DepartmentMO* department = [NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:[AppDelegate getContext]];
    department.address = address;
    department.city = city;
    department.name = name;
    department.zipCode = zip;
    
    @try {
        [[AppDelegate getContext] save:nil];
    } @catch (NSException *exception) {
        NSLog(@"fail to save");
    } @finally {
        NSLog(@"saved department");
    }
    return department;
}

+ (NSArray *)fetchAllDepartment {
    NSError *error = nil;
    NSArray *result = [[AppDelegate getContext] executeFetchRequest:DepartmentMO.fetchRequest error:&error];
    
    if (!result) {
        NSLog(@"Error fetching Deparment objects: %@\n%@", [error localizedDescription], [error userInfo]);
        return nil;
    }
    return result;
}

+ (NSArray *)fetchDepartmentWithName:(NSString *)name {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name contains[cd] %@",name];
    NSFetchRequest *fetchRequest = [DepartmentMO fetchRequest];
    fetchRequest.predicate = predicate;
    NSError *error = nil;
    NSArray *result = [[AppDelegate getContext] executeFetchRequest:fetchRequest error:&error];
    if (!result) {
        NSLog(@"Error fetching Deparment objects: %@\n%@", [error localizedDescription], [error userInfo]);
        return nil;
    }
    return result;
}
@end
