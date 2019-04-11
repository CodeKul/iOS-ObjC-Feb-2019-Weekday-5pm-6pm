//
//  MyTableViewCell.h
//  CustomTableViewCell
//
//  Created by Apple on 09/04/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *scoreLbl;
@property (weak, nonatomic) IBOutlet UILabel *teamNameLbl;

- (void) setData:(NSString *)name :(NSString *) teamName :(NSString *) score :(NSString *) imgName;

@end

NS_ASSUME_NONNULL_END
