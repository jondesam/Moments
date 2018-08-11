//
//  TableController.swift
//  Moments
//
//  Created by MyMac on 18-08-11.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class TableController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

         photos = BaseDePhotos.charger.touteLesPhotos()
    }

}
