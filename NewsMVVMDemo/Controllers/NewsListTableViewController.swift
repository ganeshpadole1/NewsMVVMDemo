//
//  NewsListTableViewController.swift
//  NewsMVVMDemo
//
//  Created by ganesh padole on 20/01/20.
//  Copyright © 2020 ganesh padole. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=1a1c707884f343f6a5d1b2653eecb8d9") else {
            return
        }

        Webservice().getAllNews(url: url) { _ in
            
        }
    }
    
}
