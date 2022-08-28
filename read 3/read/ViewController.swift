//
//  ViewController.swift
//  read
//
//  Created by Ahmed Salah on 27/08/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var b1: UIView!
    
    @IBOutlet weak var b2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmant1(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            b1.alpha = 0
            b2.alpha = 1
        }else{
            b1.alpha = 1
            b2.alpha = 0
        }
    }
    
}

