//
//  ProductCell.swift
//  foo
//
//  Created by Pavel Brovkin on 25.11.2023.
//

import UIKit

class ProductCell : UICollectionViewCell{

    


    @IBOutlet weak var tableView: UITableView!
    
    var fullScreenHandler : ((_ cell : ProductCell, _ indexProduct: Int) -> Void)?
    private var products = [Product]()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setupCell(products : [Product]){
        self.products = products
        tableView.reloadData()
    }

}

extension ProductCell : UITableViewDelegate, UITableViewDataSource{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        cell.setupCell(product: self.products[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        fullScreenHandler?(self, indexPath.row)
        
    }
    
}
