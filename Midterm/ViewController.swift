//
//  ViewController.swift
//  Midterm
//
//  Created by Kenneth Uyabeme on 11/9/18.
//  Copyright © 2018 Kenneth Uyabeme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let abc = URL(string: "http://www.uniqlo.com/ca/en/" )
        let req = URLRequest(url: abc!)
        
        // 1b. tell the webview to load the url
        webView.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

