//
//  CollectionController.swift
//  Moments
//
//  Created by MyMac on 18-08-10.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class CollectionController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photos = PhotoInitialization.charger.touteLesPhotos()
      
    }


}
