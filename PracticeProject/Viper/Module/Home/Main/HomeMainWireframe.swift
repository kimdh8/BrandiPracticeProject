//
//  HomeWireframe.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

/*
 HomeMainViewController의 Wireframe.
 HomeMainViewController를 초기화, Viper Components의 build 작업, display를 위한 로직이 위치하고 있음.
 브랜디 프로젝트의 class BRHomeMainWireframe 참고.
 */
final class HomeMainWireframe: HomeWireframe {
    
    // MARK: Variables
    fileprivate var viewController: HomeMainViewController?
    
    // MARK: Constants
    fileprivate let presenter = HomeMainPresenter()
    fileprivate let interactor = HomeMainInteractor()
    
    // MARK: Functions
    override func setDependency() {
        self.interactor.presenter = self.presenter
        self.presenter.interactor = self.interactor
        self.presenter.wireframe = self
    }
    
    func presentViewController() {
        let viewController = HomeMainViewController()
        viewController.eventHandler = self.presenter
        self.viewController = viewController
        self.presenter.viewController = self.viewController
        super.displayViewController(viewController)
    }
    
}
