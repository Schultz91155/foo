//
//  MainCell.swift
//  foo
//
//  Created by Pavel Brovkin on 26.11.2023.
//

import UIKit

class MainCell: UICollectionViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var imageLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell (group : Group){
        self.imageCell.image = group.image
        self.imageLable.text = group.name
    }

}
