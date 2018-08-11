//
//  photos.swift
//  Moments
//
//  Created by MyMac on 18-08-11.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class Photo {
    private var _image:UIImage
    private var _nom:String
    private var _desc:String
   
 
    
    var image:UIImage{
        return _image
    }
    var nom : String {
        return _nom
    }
    var desc:String{
        return _desc
    }
    
    init(image: UIImage, nom:String, desc: String) {
        self._image = image
        self._nom = nom
        self._desc = desc
    }
    
    
    
}
