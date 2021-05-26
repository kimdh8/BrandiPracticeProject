//
//  HomeInteractorIO.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

// MARK: - Home
protocol HomeInteractorInput {
    func getLabelTitle()
}

protocol HomeInteractorOutput {
    func recievedTitleData(_ responseData: ResponseTitleData)
}

// MARK: - Red
protocol RedInteractorInput {
    
}

protocol RedInteractorOutput {
    
}

// MARK: - Blue
protocol BlueInteractorInput {
    
}

protocol BlueInteractorOutput {
    
}

// MARK: - Yellow
protocol ProductInteractorInput {
    func requestProductList()
    func requestBookmark(product: Product, isBookmarked: Bool)
}

protocol ProductInteractorOutput {
    func recievedProductData(productData: [Product])
}
