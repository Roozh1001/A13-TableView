//
//  ViewController1.swift
//  read
//
//  Created by Ahmed Salah on 27/08/2022.
//

import UIKit

class ViewController1: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var viewCollection11: UICollectionView!
    
    
    var arrBook = [Book]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewCollection11.delegate = self
        viewCollection11.dataSource = self
        arrBook.append(Book(phot: UIImage(named: "image2")!, price: 40.50, nameBooks: "Rooz" ))
        arrBook.append(Book(phot: UIImage(named: "image1")!, price: 50.50, nameBooks: "t" ))
        arrBook.append(Book(phot: UIImage(named: "image3")!, price: 55.90, nameBooks: "r" ))
        arrBook.append(Book(phot: UIImage(named: "image4")!, price: 90.50, nameBooks: "e" ))
        arrBook.append(Book(phot: UIImage(named: "image5")!, price: 60.90, nameBooks: "w" ))
        arrBook.append(Book(phot: UIImage(named: "image6")!, price: 75.40, nameBooks: "ww" ))
        arrBook.append(Book(phot: UIImage(named: "image7")!, price: 70.50, nameBooks: "www" ))
        arrBook.append(Book(phot: UIImage(named: "image8")!, price: 50.55, nameBooks: "wqw" ))

    
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrBook.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let book = arrBook[indexPath.row]
        cell.setupCell(photo: book.phot, price: book.price, name: book.nameBooks)
        cell.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.499, height: self.view.frame.width * 0.49)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.3
    }
    
    struct Book{
        let phot : UIImage
        let price : Double
        let nameBooks : String
    }
   


}

