//
//  PhotoDetailController.swift
//  Moments
//
//  Created by MyMac on 18-08-11.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class PhotoDetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var photoImage: imageCoinArrondi!
    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var retourBouton: UIButton!
    
    @IBOutlet weak var hauteurContrainte: NSLayoutConstraint!
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    
    
    var photo: Photo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if photo != nil {
            nomLabel.text = "De: " + photo!.nom
            descLabel.text = photo!.desc
            photoImage.image = photo!.image
            let taille = Ratio.obtenir.taille(largeur: view.frame.width - 20, image: photo!.image)
            
            
            
           largeurContrainte.constant = taille.width
            hauteurContrainte.constant = taille.height
        }
        
        
    }

    @IBAction func retourAction(_ sender: Any) {
    }
    
    
}
