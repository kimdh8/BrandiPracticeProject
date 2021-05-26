//
//  ProductInteractor.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/22.
//

import Foundation

final class ProductInteractor {
    
    // MARK: - Variables
    var presenter: ProductInteractorOutput?
    
}

// MARK: - ProductInteractorInput Implementation
extension ProductInteractor: ProductInteractorInput {
    func requestProductList() {
        // F-3. 제품 목록을 가져오기 위한 비즈니스 로직 수행 후, 응답 받은 데이터 값은 Output을 통해 전달.
        NetworkService.shared.getProductsData { [weak self] (responseData) in
            self?.presenter?.recievedProductData(productData: responseData.products)
        }
    }
    
    func requestBookmark(product: Product, isBookmarked: Bool) {
        // G-4. 해당 제품의 북마크 여부 로컬 저장. (제품의 이름을 Key로, 북마크 여부를 value로 저장.)
        UserDefaults.standard.setValue(isBookmarked, forKey: product.name)
    }
}
