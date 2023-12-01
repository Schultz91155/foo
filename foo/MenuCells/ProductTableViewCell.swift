//
//  ProductableViewCell.swift
//  foo
//
//  Created by Pavel Brovkin on 01.12.2023.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell (product: Product){
        self.productImage.image = product.image
        self.productName.text = product.name
        self.productPrice.text = "\(product.price)"
    }
}
