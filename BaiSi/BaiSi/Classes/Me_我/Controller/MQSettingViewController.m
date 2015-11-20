//
//  MQSettingViewController.m
//  BaiSi
//
//  Created by DODI on 15/11/20.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQSettingViewController.h"

static NSString *const MQSettingCellId = @"MQSettingCellId";
@interface MQSettingViewController ()

@end

@implementation MQSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTableView];
}
- (void)setTableView{
    self.view.backgroundColor = MQCommonBgColor;
    self.navigationItem.title = @"设置";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MQSettingCellId];
    
    self.tableView.contentInset = UIEdgeInsetsMake(MQCommonSmallMargin - 25, 0, 0, 0);
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MQSettingCellId];
    cell.textLabel.text = @"清除缓存";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    return cell;
}


#pragma mark- tableview的代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
