//
//  CollectionViewCell.swift
//  foo
//
//  Created by Pavel Brovkin on 02.12.2023.
//

import UIKit

class FullProductCell: UICollectionViewCell {

    @IBOutlet weak var fullProductImage: UIImageView!
    @IBOutlet weak var fullProductName: UILabel!
    
    @IBOutlet weak var fullProductPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell (product : Product){
        self.fullProductImage.image = product.image
        self.fullProductName.text = product.name
        self.fullProductPrice.text = "\(product.price)"
    }

}
