//
//  EmployeeMO+CoreDataProperties.h
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//
//

#import "EmployeeMO+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface EmployeeMO (CoreDataProperties)

+ (NSFetchRequest<EmployeeMO *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *hireDate;
@property (nullable, nonatomic, retain) NSObject *identify;
@property (nonatomic) BOOL isManager;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, retain) DepartmentMO *department;

@end

NS_ASSUME_NONNULL_END
