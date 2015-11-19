//
//  MQMeViewController.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

//只有本文件可以用的循环利用的静态cell
static NSString *const MQMeCellID = @"meCell";
#import "MQMeViewController.h"

@interface MQMeViewController ()

@end

@implementation MQMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigation];
    [self setTableView];
}
- (void)setTableView{
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MQMeCellID];
}

- (void)setNavigation{
    self.title = @"我";
    self.view.backgroundColor = MQRandomColor;
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] highImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(moonClick)];
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(settingClick)];
    self.navigationItem.rightBarButtonItems = @[moonItem, settingItem];
}
#pragma mark- 设置界面跳转
- (void)settingClick{
    
}
- (void)moonClick{
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MQMeCellID];
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.row];
    return cell;
}

@end
