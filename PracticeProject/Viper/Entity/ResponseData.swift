//
//  ResponseData.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

// A Case에 사용
struct ResponseTitleData {
    let title: String
}

// F Case에 사용
struct ResponseProductData {
    let products: [Product]
}
struct Product {
    let name: String
    let sellerName: String
    let price: String
    var isSelected: Bool = false
}
