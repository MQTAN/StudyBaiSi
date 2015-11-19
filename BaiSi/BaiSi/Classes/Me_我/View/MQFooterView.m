//
//  MQFooterView.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQFooterView.h"
#import "MQSquare.h"
#import "MQMeButton.h"

static NSUInteger const MQColsCount = 4;
@implementation MQFooterView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        params[@"a"] = @"square";
        params[@"c"] = @"topic";
        //发送数据请求
        MQWeakSelf;
        [MQHTTPTool GET:MQRequestURL params:params success:^(id responseObject) {
//            [responseObject writeToFile:@"/Users/apple/Desktop/memFooterView.plist" atomically:YES];
            [weakSelf creatSquare:[MQSquare mq_objectArrayWithKeyValuesArray:responseObject[@"square_list"]]];
            
        } failure:^(NSError *error) {
            
        }];
}
    return self;
}
- (void)creatSquare:(NSArray *)squares{
    MQLog(@"%@", squares);
    self.backgroundColor = MQRandomColor;
    //每行的列数
    NSUInteger colsCount = MQColsCount;
    //按钮的尺寸
    CGFloat btnW = self.width / colsCount;
    CGFloat btnH = btnW;
    //遍历所有的模型
    NSInteger count = squares.count;
    for (int i = 0; i < count; i++) {
        //因为要根据数据来显示按钮的图片和url.所以要自定义.
        MQMeButton *button = [MQMeButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:button];
        CGFloat btnX = (i % colsCount) * btnW;
        CGFloat btnY = (i / colsCount) * btnW;
        button.frame = CGRectMake(btnX, btnY, btnW, btnH);
        //给button设置数据;
        
        
        button.square = squares[i];
    }
#pragma mark- 这是一个公式,(总个数 + 每行个数 - 1) / 每行个数 == 多少行;
    NSUInteger rowsCount = (count + colsCount - 1) / colsCount;
    self.height = rowsCount * btnH;
    //这里是重新刷新tableview的高度. 思想.,,,,刷新父控件的高度.....
    UITableView *tableView = (UITableView *)self.superview;
    tableView.contentSize = CGSizeMake(0, CGRectGetMaxY(self.frame));
}

- (void)layoutSubviews{
    [super layoutSubviews];
}
@end
