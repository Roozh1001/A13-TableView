//
//  ViewController.swift
//  اقرأ
//
//  Created by mac book on 28/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var viewCollection11: UICollectionView!
    
    var arrBook = [Book]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewCollection11.delegate = self
        viewCollection11.dataSource = self
        
        arrBook.append(Book(phot: UIImage(named: "image1")!, price: 50.50 ))
        arrBook.append(Book(phot: UIImage(named: "image2")!, price: 40.50 ))
        arrBook.append(Book(phot: UIImage(named: "image3")!, price: 55.90 ))
        arrBook.append(Book(phot: UIImage(named: "image4")!, price: 90.50 ))
        arrBook.append(Book(phot: UIImage(named: "image5")!, price: 60.90 ))
        arrBook.append(Book(phot: UIImage(named: "image6")!, price: 75.40 ))
        arrBook.append(Book(phot: UIImage(named: "image7")!, price: 70.50 ))
        arrBook.append(Book(phot: UIImage(named: "image8")!, price: 50.55 ))



    
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrBook.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell3
        let book = arrBook[indexPath.row]
        cell.setupCell(photo: book.phot, price: book.price)
        return cell
    }
    struct Book{
        let phot : UIImage
        let price : Double
    }
   


}

