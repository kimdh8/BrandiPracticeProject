//
//  BlueWireframe.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

/*
 BlueViewController의 Wireframe.
 BlueViewController를 초기화, Viper Components의 build 작업, display를 위한 로직이 위치하고 있음.
 브랜디 프로젝트의 class BRHomeMainWireframe 참고.
 */
final class BlueWireframe: HomeWireframe {
    
    // MARK: Variables
    fileprivate var viewController: BlueViewController?
    
    // MARK: Constants
    fileprivate let presenter = BluePresenter()
    fileprivate let interactor = BlueInteractor()
    
    // MARK: Functions
    override func setDependency() {
        self.interactor.presenter = self.presenter
        self.presenter.interactor = self.interactor
        self.presenter.wireframe = self
    }
    
    func presentViewController(text: String) {
        let viewController = BlueViewController(title: text)
        viewController.eventHandler = self.presenter
        self.viewController = viewController
        self.presenter.viewController = self.viewController
        super.displayViewController(viewController)
    }
    
}
