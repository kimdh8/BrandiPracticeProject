//
//  NetworkService.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/22.
//

import Foundation

/*
 실제 네트워크 작업이 아닌 필요한 ResponseData만 escaping 하는 메소드를 가진 class.
 */
final class NetworkService {
    
    static let shared = NetworkService()
    
    // B Case
    func getTitleData(completion: @escaping (ResponseTitleData) -> ()) {
        let responseData = ResponseTitleData(title: "B Case")
        completion(responseData)
    }
    
    // F Case
    func getProductsData(completion: @escaping (ResponseProductData) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            var products = [Product]()
            (1...30).forEach { i in
                var product = Product(name: "제품\(i)", sellerName: "번 셀러\(i)", price: "가격\(i)")
                let isSelected = UserDefaults.standard.bool(forKey: product.name)
                product.isSelected = isSelected
                products.append(product)
            }
            let responseData = ResponseProductData(products: products)
            completion(responseData)
        }
    }
    
}
