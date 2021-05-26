//
//  ProductViewController.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/22.
//

import UIKit

final class ProductViewController: UIViewController {
    
    // MARK: - Variables
    weak var eventHandler: ProductModuleInterface?
    
    // MARK: - Outlets
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // F-1. 제품 목록을 불러 오기 위한 요청.
        eventHandler?.getProducts()
    }
    
}

// MARK: - ProductViewInterface implementation
extension ProductViewController: ProductViewInterface {
    // F-5. reload
    func reloadData() {
        collectionView.reloadData()
    }
    
    func setCollectionViewDelegate(_ delegate: Adapter) {
        delegate.setRequirements(collectionView)
        collectionView.delegate = delegate
        collectionView.dataSource = delegate
    }
}
