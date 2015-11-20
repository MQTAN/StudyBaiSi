//
//  MQTagViewController.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/17.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQTagViewController.h"
#import "SDCycleScrollView.h"
#import "MQNavigationController.h"
#import "MJRefresh.h"

@interface MQTagViewController ()<SDCycleScrollViewDelegate, UITableViewDelegate, UITableViewDataSource, UIWebViewDelegate>
/**tableView测试*/
@property(nonatomic, weak) UITableView *tableView;

/**图片轮播器*/
@property(nonatomic, strong) SDCycleScrollView *cycleScrollView;

/**包装tableview的scrollview*/
@property(nonatomic, strong) UIScrollView *scrollview;

/**webview*/
@property(nonatomic, weak) UIWebView *webview;

@end

@implementation MQTagViewController
- (UIScrollView *)scrollview{
    if (!_scrollview) {
        _scrollview = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        _scrollview.contentSize = self.view.frame.size;
        [self.view addSubview:_scrollview];
    }
    return _scrollview;
}
- (SDCycleScrollView *)cycleScrollView{
    if (!_cycleScrollView) {
        NSArray *images = @[
                            [UIImage imageNamed:@"h1.jpg"],
                            [UIImage imageNamed:@"h3.jpg"],
                            [UIImage imageNamed:@"h2.jpg"],
                            [UIImage imageNamed:@"111.jpg"]
                            ];
        CGFloat w = self.view.bounds.size.width;
        
        // 本地加载 --- 创建不带标题的图片轮播器
        _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 164, w, 180) imagesGroup:images];
        _cycleScrollView.infiniteLoop = YES;
        _cycleScrollView.delegate = self;
//        _cycleScrollView.backgroundColor = [UIColor clearColor];
        _cycleScrollView.contentMode = UIViewContentModeScaleAspectFill;
        _cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
        _cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        //         --- 轮播时间间隔，默认1.0秒，可自定义
        _cycleScrollView.autoScrollTimeInterval = 1;

    }
    return _cycleScrollView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTableView];
    self.title = @"标签页学习";
    
}
- (void)setTableView{
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    self.tableView = tableView;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:tableView];
    tableView.directionalLockEnabled = YES;
//    tableView.tableHeaderView = self.cycleScrollView;
    tableView.frame = self.view.bounds;
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark - <SDCycleScrollViewDelegate>
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
   
}
#pragma mark- tableview 的数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.row];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"加载网页,奇艺高清视频网";
    }
    if (indexPath.row == 1) {
        cell.textLabel.text = @"加载标签页";
    }
    
    return cell;
}

#pragma mark tableview的代理方法
/**
 *  一定要实现这2个方法才可以达到显示头部视图
 */
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return self.cycleScrollView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 180;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MQLog(@"点击了tableview的cell");
    if (indexPath.row == 0) {
        MQLog(@"%zd", indexPath.row);
        
#pragma mark webviewe播放网络视频
        UIViewController *webviewVC = [[UIViewController alloc] init];
        webviewVC.title = @"奇艺网页显示";
        UIWebView *webview = [[UIWebView alloc] initWithFrame:self.view.bounds];
        
        self.webview = webview;
        webviewVC.title = @"奇艺视频";
        webview.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        //    NSURL *url = [NSURL URLWithString:@"http://v.youku.com/v_show/id_XMTIyODAwMzUy.html"];
        NSURL *url = [NSURL URLWithString:@"http://www.iqiyi.com/v_19rrkdx3p8.html"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        [webview setDelegate:self];
        
        [webview loadRequest:request];
        [webviewVC.view addSubview:webview];
        [self.navigationController pushViewController:webviewVC animated:YES];
        //做了横屏和竖屏适配.
        
        [webview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(webview.superview);
        }];
        
        
    }
    if (indexPath.row == 1) {
        //添加标签页
    }
}
@end
