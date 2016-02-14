//
//  ImageTableViewController.m
//  DynamicTableViewCellExample
//
//  Created by 구범모 on 2016. 2. 14..
//  Copyright © 2016년 gbmKSquare. All rights reserved.
//

#import "ImageTableViewController.h"
#import "DynamicText.h"
#import "ImageTableViewCell.h"

@implementation ImageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight = 200;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    [self.tableView reloadData];
//}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dynamicTextArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.myImageView.image = [UIImage imageNamed:@"sample"];
    cell.contentLabel.text = dynamicTextArray[indexPath.row];
//    [cell setNeedsLayout];
//    [cell layoutIfNeeded];
    return cell;
}

@end
