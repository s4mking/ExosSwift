//
//  Exo4.swift
//  Exos
//
//  Created by Samuel on 29/11/2019.
//  Copyright © 2019 Samuel. All rights reserved.
//

import Foundation


class ApiManager{
    
    var baseUrl :String
    static let shared = ApiManager()
    
    init(){
        self.baseUrl = "https://api.randomuser.me/"
    }
    
    func getRandomUser(completion: @escaping (Any) -> Void){
        
        var request = URLRequest(url: URL(string: self.baseUrl)!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, err in
            do {
                let result = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:Any]
               completion(result)
            } catch let err as NSError {
                print(err)
            }
            
        }.resume()
    }
}
