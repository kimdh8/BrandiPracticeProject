//
//  SuperWireframe.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

/*
 Wireframe의 최상위 클래스.
 하위 클래스들이 공통으로 참조할 function들이 위치하고 있음.
 브랜디의 class SuperWireframe 참고.
 */
class SuperWireframe {
    
    var rootNavigationController = UINavigationController()
    
    init() {
        self.setDependency()
    }
    
    // Viper Components 설정(하위 클래스들의 ovveride 구현 부분을 참고.)
    func setDependency() {
        
    }
    
    func displayViewController(_ viewController: UIViewController) {
        rootNavigationController.pushViewController(viewController, animated: true)
    }
    
}
