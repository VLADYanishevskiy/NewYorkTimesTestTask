//
//  VCSelectedNews.swift
//  NewYorkTimesTestTask
//
//  Created by Владислав on 09.05.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation
import UIKit

class VCSelectedNews : UIViewController{
    
    @IBOutlet weak var webViewCurrentNews: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webViewCurrentNews.loadRequest(URLRequest(url: URL(string: CurrentUsersData.currentSelectedNewsText)!));
    }
}
