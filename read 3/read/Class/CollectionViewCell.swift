//
//  CollectionViewCell.swift
//  read
//
//  Created by Ahmed Salah on 27/08/2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var NameBook: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    
    func setupCell(photo: UIImage, price: Double, name: String){
        NameBook.text = name
        imageCell.image = photo
        labelCell.text = "\(price) SAR"
}
    
}
