//
//  WelocmeViewController.swift
//  Day4UserDefault
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class WelocmeViewController: UIViewController
{

    @IBOutlet weak var lblWelocme: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let ud=UserDefaults.standard
        let name=ud.string(forKey: "name")
        if let nm=name
        {
            lblWelocme.text="Welcome, \(nm)"
        }
        
    }
    
    @IBAction func btnRemove(_ sender: UIButton)
    {
        UserDefaults.standard.removeObject(forKey: "name")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
