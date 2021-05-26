//
//  HomePresenter.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

/*
 View로부터 유저의 어떠한 interaction을 전달 받았을때 View를 업데이트 하거나
 Wireframe에게 화면 전환을 요청 하거나
 Interactor에게 Network Service를 통한 비즈니스 로직 수행을 요청.
 */

final class HomeMainPresenter {
    
    // MARK: - Variables
    weak var viewController: HomeViewInterface?
    var interactor: HomeInteractorInput?
    var wireframe: HomeMainWireframe?
    
}

// MARK: - HomeInteractorOutput Implementation
extension HomeMainPresenter: HomeInteractorOutput {
    func getResponseData(_ responseData: ResponseTitleData) {
        // B-4. interactor에게서 전달 받은 결괏값을 가지고 viewController에게 UI Update 요청.
        viewController?.updateTitleWithRequest(responseData)
    }
}

// MARK: - HomeMainModuleInterface Implementation
extension HomeMainPresenter: HomeMainModuleInterface {
    // A-2. viewController에게 UI Update 요청
    func handlerButton1() {
        viewController?.updateTitle(title: "A Case")
    }
    
    // B-2. interactor(input)에게 라벨의 타이틀을 얻기 위한 비즈니스 로직 수행 요청.
    func handlerButton2() {
        interactor?.getLabelTitle()
    }
    
    // C-2. wireframe에게 RedVC로 화면 전환을 요청
    func handlerButton3() {
        viewController?.updateTitle(title: "C Case")
        wireframe?.pushToRedViewController()
    }
    
    // D-2. wireframe에게 BlueVC로 화면 전환을 text와 함께 요청
    func handlerButton4(_ text: String) {
        viewController?.updateTitle(title: "D Case")
        wireframe?.pushToBlueViewController(text: text)
    }
    
    // E-2. wireframe에게 ProductVC로 화면 전환을 요청
    func handlerButton5() {
        viewController?.updateTitle(title: "E Case")
        wireframe?.pushToProductViewController()
    }
}
