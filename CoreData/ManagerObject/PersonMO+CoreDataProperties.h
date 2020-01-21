//
//  PersonMO+CoreDataProperties.h
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import "PersonMO+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface PersonMO (CoreDataProperties)

+ (NSFetchRequest<PersonMO *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *dateOfBirth;
@property (nullable, nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
