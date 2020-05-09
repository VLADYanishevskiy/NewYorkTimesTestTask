//
//  VCNews.swift
//  NewYorkTimesTestTask
//
//  Created by Владислав on 09.05.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation
import UIKit

class VCNews : UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var TableViewNews: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlCurrentRequestForNewsString = "https://api.nytimes.com/svc/search/v2/articlesearch.json?fq=section_name:(%22\(CurrentUsersData.selectedCategory)%22)&begin_date=20200501&end_date=20200505&api-key=\(CurrentUsersData.apiKey)";
        
   
        
        
        
        
        
        let url = URL(string: urlCurrentRequestForNewsString);
        
        
        let getNewsTask = URLSession.shared.dataTask(with: url!){ (data, response , error) in
            
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String : AnyObject];
                
                let decoder = JSONDecoder();
                let answer = try! decoder.decode(Answer.self, from: data!);
                
                print(urlCurrentRequestForNewsString);
                answer.response.docs.forEach { (Docs) in
                    print(Docs.web_url);
                }
            }catch _{
                print("Error parsing")
            }
            
        }
        
        getNewsTask.resume();
       
        
    }
    
    @available(iOS 2.0, *)
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
         return CurrentUsersData.Categories.count;
     }

    
     @available(iOS 2.0, *)
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
         var cell = TableViewNews.dequeueReusableCell(withIdentifier: "TableViewCellNewsIdentifier", for: indexPath);
         
         cell.textLabel?.text = CurrentUsersData.Categories[indexPath.row];
         
         return cell;
     }

    
}
