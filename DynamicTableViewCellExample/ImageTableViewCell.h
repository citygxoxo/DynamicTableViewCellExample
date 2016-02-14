//
//  ImageTableViewCell.h
//  DynamicTableViewCellExample
//
//  Created by 구범모 on 2016. 2. 14..
//  Copyright © 2016년 gbmKSquare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end
