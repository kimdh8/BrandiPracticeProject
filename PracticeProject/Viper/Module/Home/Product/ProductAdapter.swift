//
//  ProductAdapter.swift
//  PracticeProject
//
//  Created by κΉλν on 2021/05/21.
//

import UIKit

protocol ProductCollectionViewCellAdapterDelegate: AnyObject {
    func didTapLikeButton(product: Product, isBookmarked: Bool)
}

final class Adapter: NSObject {
    
    // MARK: Variables
    var products: [Product] = [Product]()
    weak var delegate: ProductCollectionViewCellAdapterDelegate?
    
    // MARK: Constants
    private let marginH: CGFloat = 16.0
    private let interItem: CGFloat = 16.0
    
    func setRequirements(_ collectionView: UICollectionView) {
        let nib = UINib(nibName: "ProductCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ProductCollectionViewCell")
    }
}

// MARK: - UICollectionViewDelegateFlowLayout Implementation
extension Adapter: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.width
        let productMargin: CGFloat = 16
        let productInset: CGFloat = 9
        let productColumCount: Int = 2
        let cellWidth = (collectionViewWidth - (productMargin * 2) - (productInset * (CGFloat(productColumCount) - 1))) / CGFloat(productColumCount)
        
        let bottomContainer: CGFloat = 46
        let height = cellWidth * 1.12 + bottomContainer
        let fittingSize: CGSize = .init(width: cellWidth, height: height)
        return fittingSize
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: marginH, bottom: 0, right: marginH)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return interItem
    }
}

// MARK: - UICollectionViewDataSource Implementation
extension Adapter: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as? ProductCollectionViewCell else { return .init() }
        let product = products[indexPath.item]
        cell.configure(product: product, delegate: self)
        return cell
    }
    
}

// MARK: - ProductCollectionViewCellDelegate Implementation
extension Adapter: ProductCollectionViewCellDelegate {
    
    func bookmarkButtonHandler(product: Product, isBookmarked: Bool) {
        // G-2. presenterμκ² λΆλ§ν¬ μ΄λ²€νΈ λ°μ μ λ¬.
        delegate?.didTapLikeButton(product: product, isBookmarked: isBookmarked)
    }
    
}
