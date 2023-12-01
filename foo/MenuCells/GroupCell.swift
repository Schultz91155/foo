//
//  GroupCell.swift
//  foo
//
//  Created by Pavel Brovkin on 26.11.2023.
//

import UIKit

class GroupCell: UICollectionViewCell {

    
    @IBOutlet weak var groupName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.backgroundColor = .white
    }
    func setupCell(group : Group, isSelected: Bool){
        self.groupName.text = group.name
        if isSelected{
            self.contentView.backgroundColor = .orange
        }else{
            self.contentView.backgroundColor = .white
        }
    }

}
