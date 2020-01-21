//
//  DepartmentMO+CoreDataProperties.h
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import "DepartmentMO+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface DepartmentMO (CoreDataProperties)

+ (NSFetchRequest<DepartmentMO *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *address;
@property (nullable, nonatomic, copy) NSString *city;
@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) int32_t zipCode;
@property (nullable, nonatomic, retain) NSSet<EmployeeMO *> *employees;

@end

@interface DepartmentMO (CoreDataGeneratedAccessors)

- (void)addEmployeesObject:(EmployeeMO *)value;
- (void)removeEmployeesObject:(EmployeeMO *)value;
- (void)addEmployees:(NSSet<EmployeeMO *> *)values;
- (void)removeEmployees:(NSSet<EmployeeMO *> *)values;

@end

NS_ASSUME_NONNULL_END
