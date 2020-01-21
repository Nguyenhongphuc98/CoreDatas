//
//  DepartmentMO+CoreDataProperties.m
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import "DepartmentMO+CoreDataProperties.h"

@implementation DepartmentMO (CoreDataProperties)

+ (NSFetchRequest<DepartmentMO *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Department"];
}

@dynamic address;
@dynamic city;
@dynamic name;
@dynamic zipCode;
@dynamic employees;

@end
