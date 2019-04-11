//
//  MyTableViewCell.m
//  CustomTableViewCell
//
//  Created by Apple on 09/04/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void) setData:(NSString *)name :(NSString *) teamName :(NSString *) score :(NSString *) imgName {
    _nameLbl.text = name;
    _teamNameLbl.text = teamName;
    _scoreLbl.text = score;
    _myImageView.image = [UIImage imageNamed:imgName];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
