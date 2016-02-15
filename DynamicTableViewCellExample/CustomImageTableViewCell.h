//
//  CustomImageTableViewCell.h
//  DynamicTableViewCellExample
//
//  Created by 구범모 on 2016. 2. 15..
//  Copyright © 2016년 gbmKSquare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomImageTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end
