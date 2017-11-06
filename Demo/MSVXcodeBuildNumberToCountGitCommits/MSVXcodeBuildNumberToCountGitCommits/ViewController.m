//
//  ViewController.m
//  MSVXcodeBuildNumberToCountGitCommits
//
//  https://github.com/sergemoskalenko/MSVXcodeBuildNumberToCountGitCommits
//  Created by Serge Moskalenko on 11/6/17.
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()
@property (nonatomic) WKWebView *webView;
@end

@implementation ViewController

- (void)loadView {
    self.webView = [[WKWebView alloc] initWithFrame:CGRectZero configuration:[WKWebViewConfiguration new]];
    self.view = self.webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://camopu.rhorse.ru/MSVXcodeBuildNumberToCountGitCommits.html"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
