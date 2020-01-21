//
//  PersonMO+CoreDataProperties.m
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import "PersonMO+CoreDataProperties.h"

@implementation PersonMO (CoreDataProperties)

+ (NSFetchRequest<PersonMO *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Person"];
}

@dynamic dateOfBirth;
@dynamic name;

@end
