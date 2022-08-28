//
//  DataViewController.swift
//  read
//
//  Created by Ahmed Salah on 27/08/2022.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var imgData: UIImageView!
    @IBOutlet weak var labimgData: UILabel!
    @IBOutlet weak var prcData: UILabel!
    @IBOutlet weak var DesData: UITextView!
    
    
    var name = String()
    var prc = String()
    var img = UIImage()
    var des = String()
    override func viewDidLoad() {
        
        labimgData.text = name
        prcData.text = prc
        imgData.image = img
        DesData.text = des
        
        super.viewDidLoad()

    }
    

    

}
