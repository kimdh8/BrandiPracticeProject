//
//  HomeViewInterface.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

// MARK: - Home
protocol HomeViewInterface: AnyObject {
    func updateTitle(title: String)
    func updateTitleWithRequest(_ responseData: ResponseTitleData)
}

// MARK: - Red
protocol RedViewInterface: AnyObject {
    
}

// MARK: - Blue
protocol BlueViewInterface: AnyObject {
    func setTitle(text: String)
}

// MARK: - Product
protocol ProductViewInterface: AnyObject {
    func setCollectionViewDelegate(_ delegate: Adapter)
    func reloadData()
}
