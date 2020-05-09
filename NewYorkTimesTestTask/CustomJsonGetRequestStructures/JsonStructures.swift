//
//  JsonStructures.swift
//  NewYorkTimesTestTask
//
//  Created by Владислав on 09.05.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation

struct Docs:Codable{
    let abstract:String
    let web_url:String
    let snippet:String
    let lead_paragraph:String
    
    
}

struct Response:Codable{
    let docs:[Docs]
}

struct Answer:Codable{
    let status:String
    let response:Response
}
