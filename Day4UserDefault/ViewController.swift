//
//  ViewController.swift
//  Day4UserDefault
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        txtName.text=""
        lblName.text=""
    }

    @IBAction func btnSaveClick(_ sender: UIButton)
    {
        UserDefaults.standard.set(txtName.text, forKey: "name")
    }
    
    @IBAction func btnFetchClick(_ sender: UIButton)
    {
        let ud=UserDefaults.standard
        let name=ud.string(forKey: "name")
        
        lblName.text=name
    }
}

