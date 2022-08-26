//
//  CollectionViewCell3.swift
//  اقرأ
//
//  Created by mac book on 28/01/1444 AH.
//

import UIKit

class CollectionViewCell3: UICollectionViewCell {
    @IBOutlet var labelCell: UILabel!
    @IBOutlet var imageCell: UIImageView!
    
    
    func setupCell(photo: UIImage, price: Double){
        imageCell.image = photo
        labelCell.text = "\(price)SAR"
}

}
