//
//  CollectionController.swift
//  Moments
//
//  Created by MyMac on 18-08-10.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class CollectionController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayOfInitializedPhotos = [Photo]()
    var cellID = "MomentCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nib = UINib(nibName: cellID, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier:cellID)
        
        arrayOfInitializedPhotos = PhotoInitialization.charger.touteLesPhotos()
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return arrayOfInitializedPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MomentCollectionCell{
            cell.mep(photo: arrayOfInitializedPhotos[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let image = arrayOfInitializedPhotos[indexPath.item].image
        let lageur = collectionView.frame.width / 2 - 30
        let ratio = lageur / image.size.width
        let width = image.size.width * ratio
        let height = image.size.height * ratio
        
        
        return CGSize(width: width , height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    
}
