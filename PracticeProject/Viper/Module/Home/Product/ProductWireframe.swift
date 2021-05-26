//
//  ProductWireframe.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/22.
//

import UIKit

/*
 ProductViewController의 Wireframe.
 ProductViewController를 초기화, Viper Components의 build 작업, display를 위한 로직이 위치하고 있음.
 브랜디 프로젝트의 class BRHomeMainWireframe 참고.
 */
final class ProductWireframe: HomeWireframe {
    
    // MARK: Variables
    fileprivate var viewController: ProductViewController?
    
    // MARK: Constants
    fileprivate let presenter = ProductPresenter()
    fileprivate let interactor = ProductInteractor()
    
    // MARK: Functions
    override func setDependency() {
        self.interactor.presenter = self.presenter
        self.presenter.interactor = self.interactor
        self.presenter.wireframe = self
    }
    
    func presentViewController() {
        let viewController = ProductViewController()
        viewController.eventHandler = self.presenter
        self.viewController = viewController
        self.presenter.viewController = self.viewController
        super.displayViewController(viewController)
    }
    
}
