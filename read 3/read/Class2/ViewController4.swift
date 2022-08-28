//
//  ViewController3.swift
//  read
//
//  Created by Ahmed Salah on 27/08/2022.
//

import UIKit

class ViewController4: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var arrayName = [
        "Ahmed",
        "Roze",
        "Ali",
        "Bker"
    ]
    
    
    var arrayImg = [
        UIImage(named: "image1"),
        UIImage(named: "image2"),
        UIImage(named: "image3"),
        UIImage(named: "image4")
    ]
    
    
    var arrayPrice = [
        "134 SAR",
        "353 SAR",
        "976 SAR",
        "047 SAR"
    ]
    
    
    var arrayDes = [
        "jfhjgvjhvjvjjhvjvjvvjvjvjvvvhjvhjvhjvhvj",
        "FVJVJVUVUVVJHJH",
        "IGUOGUIIII",
        "IUFYUFUUUBB"
    ]
    
    
    
    @IBOutlet weak var viewCollection11: UICollectionView!
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
       
        viewCollection11.delegate = self
        viewCollection11.dataSource = self
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayName.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell4
        
        cell.NameBook.text = arrayName[indexPath.row]
        cell.imageCell.image = arrayImg[indexPath.row]
        cell.labelCell.text = arrayPrice[indexPath.row]
        
        cell.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        cell.layer.cornerRadius = 12
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let vc = UIStoryboard(name: "Main", bundle: nil)
        let dvc = vc.instantiateViewController(withIdentifier: "HomeViewController") as! DataViewController
        
        dvc.name = arrayName[indexPath.row]
        dvc.prc = arrayPrice[indexPath.row]
        dvc.img = UIImage?(arrayImg[indexPath.row]!)!
        dvc.des = arrayDes[indexPath.row]
        
        self.navigationController?.pushViewController(dvc, animated: true)
        
        
//        let vc = storyboard?.instantiateViewController(withIdentifier: "hi") as! DataViewController
//
//        vc.name = arrayName[indexPath.row]
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.450, height: self.view.frame.width * 0.50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.3
    }
    
   
   


}

