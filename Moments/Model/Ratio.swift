//
//  Ratio.swift
//  Moments
//
//  Created by MyMac on 18-08-11.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class Ratio {

    static let obtenir = Ratio()
   
    func taille(largeur: CGFloat, image:UIImage) -> CGSize {
        
        
       
        let ratio = largeur / image.size.width
        let width = image.size.width * ratio
        let height = image.size.height * ratio
        
        
        return CGSize(width: width , height: height)
    }

}
