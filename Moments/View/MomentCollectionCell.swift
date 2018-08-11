//
//  MomentCollectionCell.swift
//  Moments
//
//  Created by MyMac on 18-08-11.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class MomentCollectionCell: UICollectionViewCell {
 
    

    @IBOutlet weak var imageViewCell: imageCoinArrondi!
    
    var photo: Photo!
    
    func mep(photo:Photo){
        self.photo = photo
    
    imageViewCell.image = self.photo.image
    }
    

    
    
}
