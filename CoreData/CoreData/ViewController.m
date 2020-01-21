//
//  ViewController.m
//  CoreData
//
//  Created by CPU11716 on 1/21/20.
//  Copyright © 2020 CPU11716. All rights reserved.
//

#import "ViewController.h"
#import "DepartmentMO+CoreDataClass.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *zipcodeTextField;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UITableView *departmentTableView;

@property (nonatomic) NSArray *departArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _departArray = [NSArray new];
    [self fetchAllDepart];
}

- (IBAction)didClickInsertDepartmentButton:(id)sender {
    NSString *name = _nameTextField.text;
    NSString *address = _address.text;
    NSString *city = _cityTextField.text;
    int32_t zip = [_zipcodeTextField.text intValue];
    DepartmentMO *department = [DepartmentMO insertNewDepartmentWithAddress:address city:city name:name zipcode:zip];
    if (department) {
        [self fetchAllDepart];
        NSLog(@"insert depart success");
    }
}
- (IBAction)didClickLoadDepartmentButton:(id)sender {
    NSString *searchText = _searchTextField.text;
    _departArray = [DepartmentMO fetchDepartmentWithName:searchText];
    [_departmentTableView reloadData];
}

- (void)fetchAllDepart {
    _departArray = [DepartmentMO fetchAllDepartment];
    [_departmentTableView reloadData];
}

//delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_departArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"departCell"];
    cell.textLabel.text = [_departArray[indexPath.row] name];
    return cell;
}
@end
