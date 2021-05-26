//
//  ProductCollectionViewCell.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/22.
//

import UIKit

protocol ProductCollectionViewCellDelegate: AnyObject {
    func bookmarkButtonHandler(product: Product, isBookmarked: Bool)
}

final class ProductCollectionViewCell: UICollectionViewCell {

    private var product: Product?
    weak var delegate: ProductCollectionViewCellDelegate?
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var sellerLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var bookmarkButton: UIButton!
    
    @IBAction func bookmarkButtonHandler(_ sender: UIButton) {
        guard let product = product else { return }
        // G-1. bookmarkButton에 이벤트가 발생하면 상태 변경후, cell 정보와 함께 delegate 메소드를 호출.
        sender.isSelected.toggle()
        self.delegate?.bookmarkButtonHandler(product: product, isBookmarked: sender.isSelected)
    }
    
    func configure(product: Product, delegate: ProductCollectionViewCellDelegate) {
        self.product = product
        self.sellerLabel.text = product.sellerName
        self.productNameLabel.text = product.name
        self.priceLabel.text = product.price
        self.delegate = delegate
        self.bookmarkButton.isSelected = product.isSelected
    }

}
