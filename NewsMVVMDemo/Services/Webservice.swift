//
//  Webservice.swift
//  NewsMVVMDemo
//
//  Created by ganesh padole on 20/01/20.
//  Copyright © 2020 ganesh padole. All rights reserved.
//

import Foundation

class Webservice {
    
    func getAllNews(url: URL, completion: @escaping (([Any]?) -> ())) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
                
                let jsonData = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print(jsonData)
                
            }
            
        }.resume()
        
    }
    
}
