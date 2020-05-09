//
//  StaticCurrentUsersData.swift
//  NewYorkTimesTestTask
//
//  Created by Владислав on 09.05.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation

class CurrentUsersData{
    public static var Categories:[String] = ["Arts" , "Sport" , "Science" , "Health"];
    public static var selectedCategory:String = "";
    public static var apiKey = "3UY5UQzAVzKLkP7vDXOoAGOXnljcem6t"
    public static var currentNewsForSelectedCategory:[String] = []
    
}
