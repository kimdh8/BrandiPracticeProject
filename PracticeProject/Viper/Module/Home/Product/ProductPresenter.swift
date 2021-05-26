//
//  ProductPresenter.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/22.
//

import Foundation

final class ProductPresenter {
    
    // MARK: - Variables
    weak var viewController: ProductViewInterface?
    var interactor: ProductInteractorInput?
    var wireframe: ProductWireframe?
    private let adapter = Adapter()
    
}

// MARK: - ProductModuleInterface implementation
extension ProductPresenter: ProductModuleInterface {
    func getProducts() {
        adapter.delegate = self // adapter의 delegate를 presenter로 지정.
        viewController?.setCollectionViewDelegate(self.adapter) // CollectionView의 delegate와 DataSource를 Adapter로 지정.
        interactor?.requestProductList() // F-2. interactor에게 제품 목록을 가져오기 위한 비즈니스 로직 수행을 요청.
    }
}

// MARK: - ProductInteractorOutput implementation
extension ProductPresenter: ProductInteractorOutput {
    // F-4. 전달 받은 리스트를 Adapter 내의 위치한 products에 할당 후 reload.
    func recievedProductData(productData: [Product]) {
        adapter.products = productData
        viewController?.reloadData()
    }
}

// MARK: - ProductCollectionViewCellAdapterDelegate implementation
extension ProductPresenter: ProductCollectionViewCellAdapterDelegate {
    // G-3. interactor에게 북마크 버튼 이벤트에 대한 비즈니스 로직 수행 요청.
    func didTapLikeButton(product: Product, isBookmarked: Bool) {
        interactor?.requestBookmark(product: product, isBookmarked: isBookmarked)
    }
}
