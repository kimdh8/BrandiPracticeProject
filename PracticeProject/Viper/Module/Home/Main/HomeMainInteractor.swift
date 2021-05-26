//
//  HomeInteractor.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

final class HomeMainInteractor {
    
    // MARK: - Variables
    var presenter: HomeInteractorOutput?
    
}

// MARK: - HomeInteractorInput Implementation
extension HomeMainInteractor: HomeInteractorInput {
    
    func getLabelTitle() {
        NetworkService.shared.getTitleData { [weak self] (responseData) in
            // B-3. 도출한 결괏값을 output인 presenter에게 전달
            self?.presenter?.getResponseData(responseData)
        }
    }
    
}
