//
//  UserDetailsSmallView.swift
//  DriverSampleApp
//
//  Created by Ashish Asawa on 25/04/18.
//  Copyright © 2018 Ashish Asawa. All rights reserved.
//

import UIKit

class UserDetailsSmallView: UIView {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func feed(fromTrip trip: Trip?) {
        self.nameLabel.text = trip?.userDetails.name ?? ""
        var descriptionText = ""
        let rating = trip?.userDetails.rating ?? 4.8
        descriptionText = String(format: "%0.1f", rating)
        self.ratingLabel.text = descriptionText.appending(" ☆☆☆☆☆") //TODO: Theming
    }
    
}
