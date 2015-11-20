//
//  MQWebViewController.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/20.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQWebViewController.h"

#import "MQSquare.h"

@interface MQWebViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *forwardItem;

@end

@implementation MQWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.automaticallyAdjustsScrollViewInsets = YES;
    self.title = self.square.name;
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.square.url]]];
    self.webview.delegate = self;
    self.webview.backgroundColor = MQCommonBgColor;
    self.webview.scrollView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
    MQLogLine(@"%lf", self.webview.scrollView.contentInset.top);
}

- (IBAction)back:(UIBarButtonItem *)sender {
    [self.webview goBack];
}
- (IBAction)forward:(UIBarButtonItem *)sender {
    [self.webview goForward];
}

- (IBAction)refresh:(UIBarButtonItem *)sender {
    [self.webview reload];
}
#pragma mark- webview的代理方法
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    self.backItem.enabled = webView.canGoBack;
    self.forwardItem.enabled = webView.canGoForward;
}
@end
