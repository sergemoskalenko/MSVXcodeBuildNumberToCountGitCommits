//
//  ViewController.swift
//  MSVXcodeBuildNumberToCountGitCommits-Swift
//
//  https://github.com/sergemoskalenko/MSVXcodeBuildNumberToCountGitCommits
//  Created by Serge Moskalenko on 11/6/17.
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView(frame: .zero, configuration: WKWebViewConfiguration())
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: URL(string: "http://camopu.rhorse.ru/MSVXcodeBuildNumberToCountGitCommits.html")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

