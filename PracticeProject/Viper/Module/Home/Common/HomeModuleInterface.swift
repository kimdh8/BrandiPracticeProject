//
//  HomeMainModuleInterface.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

// MARK: - Home ModuleInterface
protocol HomeMainModuleInterface: AnyObject {
    func handlerButton1()
    func handlerButton2()
    func handlerButton3()
    func handlerButton4(_ text: String)
    func handlerButton5()
}

// MARK: - Red ModuleInterface
protocol RedModuleInterface: AnyObject {
    
}

// MARK: - Blue ModuleInterface
protocol BlueModuleInterface: AnyObject {
    func setLabelText(text: String)
}

// MARK: - Product ModuleInterface
protocol ProductModuleInterface: AnyObject {
    func getProducts()
}
