//
//  MQMeTableViewCell.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQMeTableViewCell.h"

@implementation MQMeTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
/**
 *  通过代码创建cell 就会调用这个方法来进行初始化.
 */
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.textLabel.textColor = [UIColor darkGrayColor];
        //设置背景图片
        self.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mainCellBackground"]];

    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    if (!self.imageView.image) {
        return;
    }
    //微调imageView
    self.imageView.y = MQCommonMargin * 0.5;
    self.imageView.height = self.contentView.height - 2 * self.imageView.y;
    self.imageView.width = self.imageView.height;
    //调整label
    self.textLabel.x = CGRectGetMaxX(self.imageView.frame) + MQCommonMargin;
}
@end
