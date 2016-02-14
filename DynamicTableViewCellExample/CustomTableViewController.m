//
//  CustomTableViewController.m
//  DynamicTableViewCellExample
//
//  Created by 구범모 on 2016. 2. 14..
//  Copyright © 2016년 gbmKSquare. All rights reserved.
//

#import "CustomTableViewController.h"
#import "DynamicText.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight = 100;
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
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"News %lu", indexPath.row];
    cell.contentLabel.text = dynamicTextArray[indexPath.row];
    return cell;
}

@end
