//
//  MomentTableCell.swift
//  Moments
//
//  Created by MyMac on 18-08-11.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class MomentTableCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: imageCoinArrondi!
    
    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var photo: Photo!
    
    func mep(photo: Photo) {
        self.photo = photo
        
        imageViewCell.image = self.photo.image
        nomLabel.text = "De: " + self.photo.nom
        descLabel.text = self.photo.desc
        
    }
}
