//
//  DepartmentMO+CoreDataClass.h
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class EmployeeMO;

NS_ASSUME_NONNULL_BEGIN

@interface DepartmentMO : NSManagedObject
+ (DepartmentMO*)insertNewDepartmentWithAddress:(NSString*)address city:(NSString*)city name:(NSString*)name zipcode:(int32_t)zip;
+ (NSArray*)fetchAllDepartment;
+ (NSArray*)fetchDepartmentWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END

#import "DepartmentMO+CoreDataProperties.h"
