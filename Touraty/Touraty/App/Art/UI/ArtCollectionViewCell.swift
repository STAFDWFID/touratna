//
//  ArtCollectionViewCell.swift
//  Touraty
//
//  Created by MT5619 on 19/05/2020.
//  Copyright © 2020 MT5619. All rights reserved.
//

import UIKit

class ArtCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var artImage: UIImageView!
    
    @IBOutlet weak var artDescription: UILabel!
    
    func initArt(artImage:UIImage,artDescription:String){
        
        self.artImage.image = artImage
        self.artDescription.text = artDescription
    }
    
}
