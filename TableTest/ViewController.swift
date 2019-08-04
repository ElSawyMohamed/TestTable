//
//  ViewController.swift
//  TableTest
//
//  Created by Razy Tech on 8/4/19.
//  Copyright © 2019 Razy Tech. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController  , UITableViewDelegate , UITableViewDataSource {
   
    @IBOutlet weak var tableTest: UITableView!
    
    var idRetailMap : String = ""
    
    var nearByBranches : [BranchesOnMap] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let params : [String : String ] = ["CategoryID" : "" , "UserId" : "f71a805d-d753-4576-a38f-c223fa617af7" , "Lang" : "En" , "Lat" : "30.0135244" , "Long" : "31.2824804"]
        
        nearBy(url: "https://encreezapi.azurewebsites.net/api/customer/FindOnMap" , parameters: params)
        
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nearByBranches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NearTable", for: indexPath) as! testTableViewCell
        
        cell.nameBranch.text = nearByBranches[indexPath.row].Name
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      if  nearByBranches[indexPath.row].retailerId == "b8c8b21c-287e-43ab-a3d2-6e5018071360"
      {
        performSegue(withIdentifier: "FirstView", sender: self )
      }
      else if  nearByBranches[indexPath.row].retailerId == "72108e90-98ca-436a-8779-7a7685e0c21b"
      {
        
        performSegue(withIdentifier: "SecondView", sender: self )
        }
        
        
        
    }
    func nearBy(url : String , parameters :[String : String ])
    {
        Alamofire.request(url , method: .post, parameters : parameters ).responseJSON {
            response in
            if response.result.isSuccess
            {
                let dataJSON = JSON(response.result.value!)
                let data = dataJSON["data"].arrayValue
                for i in data
                {
                  self.nearByBranches.append(BranchesOnMap(json: i))
                }
               
                self.tableTest.reloadData()
            }
            else
            {
            
            }
            
        }
    }
}

