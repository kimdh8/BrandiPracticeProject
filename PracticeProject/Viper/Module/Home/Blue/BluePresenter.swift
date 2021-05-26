//
//  BluePresenter.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

final class BluePresenter: BlueModuleInterface, BlueInteractorOutput {
    
    // MARK: - Variables
    weak var viewController: BlueViewInterface?
    var interactor: BlueInteractorInput?
    var wireframe: BlueWireframe?
    
    // MARK: - BlueModuleInterface Implementation
    func setLabelText(text: String) {
        viewController?.setTitle(text: text.replacingOccurrences(of: "?", with: "!"))
    }
    
    func handlerButton() {
        wireframe?.pushToProductViewController()
    }
    
    // MARK: - BlueInteractorOutput Implementation
    
}
