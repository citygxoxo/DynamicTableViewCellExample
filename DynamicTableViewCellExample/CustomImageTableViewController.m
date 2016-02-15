//
//  CustomImageTableViewController.m
//  DynamicTableViewCellExample
//
//  Created by 구범모 on 2016. 2. 15..
//  Copyright © 2016년 gbmKSquare. All rights reserved.
//

#import "CustomImageTableViewController.h"
#import "DynamicText.h"
#import "CustomImageTableViewCell.h"

@interface CustomImageTableViewController ()

@end

@implementation CustomImageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight = 120;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dynamicTextArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"News %lu", indexPath.row];
    cell.contentLabel.text = dynamicTextArray[indexPath.row];
    if (indexPath.row % 3 == 0) {
        cell.myImageView.image = [UIImage imageNamed:@"sample"];
        cell.imageHeightConstraint.constant = 120.5;
    } else {
        cell.myImageView.image = nil;
        cell.imageHeightConstraint.constant = 0;
    }
    return cell;
}

@end
