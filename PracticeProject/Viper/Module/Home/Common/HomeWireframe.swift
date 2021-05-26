//
//  HomeWireframe.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import Foundation

/*
 HomeMainViewController에서 발생할 수 있는 화면 전환을 담당하고 있음.
 브랜디 프로젝트의 class MarketWireframe 참고.
 */
class HomeWireframe: SuperWireframe {
    
    // MARK: - Functions
    // C-3. RedVC로 화면 전환
    func pushToRedViewController() {
        let wireframe = RedWireframe()
        wireframe.rootNavigationController = self.rootNavigationController
        wireframe.presentViewController()
    }
    
    // D-3. BlueVC로 화면 전환(text와 같이 전달)
    func pushToBlueViewController(text: String) {
        let wireframe = BlueWireframe()
        wireframe.rootNavigationController = self.rootNavigationController
        wireframe.presentViewController(text: text)
    }
    
    // E-3. ProductVC로 화면 전환
    func pushToProductViewController() {
        let wireframe = ProductWireframe()
        wireframe.rootNavigationController = self.rootNavigationController
        wireframe.presentViewController()
    }
    
}
