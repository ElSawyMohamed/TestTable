//
//  FirstViewController.swift
//  TableTest
//
//  Created by Razy Tech on 8/4/19.
//  Copyright © 2019 Razy Tech. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func bckBtn(_ sender: UIButton) {
        
      dismiss(animated: true , completion: nil)
    }
    
}
