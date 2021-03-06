//
//  RedPresenter.swift
//  PracticeProject
//
//  Created by κΉλν on 2021/03/21.
//

import UIKit

final class RedPresenter: RedModuleInterface {
    
    // MARK: - Variables
    weak var viewController: RedViewInterface?
    var interactor: RedInteractorInput?
    var wireframe: RedWireframe?
    
}

// MARK: - RedInteractorOutput Implementation
extension RedPresenter: RedInteractorOutput {
    
}
