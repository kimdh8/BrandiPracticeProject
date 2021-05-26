//
//  HomeMainViewController.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

/*
 A. 단순히 label에 text를 변경.
 B. 네트워크 서비스를 통한 text 변경.
 C. wireframe을 이용한 화면전환.
 D. 화면 전환하는 과정중 text 전달.
 E. ProductViewController로 화면 전환.
 F. Viper 패턴과 collectionView Adapter를 결합하여 List를 불러오는 과정.
 G. 북마크 버튼의 이벤트.
 */

final class HomeMainViewController: UIViewController {
    
    // MARK: - Variables
    weak var eventHandler: HomeMainModuleInterface?
    
    // MARK: - Outlets
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var button1: UIButton!
    @IBOutlet private weak var button2: UIButton!
    @IBOutlet private weak var button3: UIButton!
    @IBOutlet private weak var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    // A-1. 유저의 인터렉션을 presenter에게 전달
    @IBAction private func handlerButton1(_ sender: Any) {
        eventHandler?.handlerButton1()
    }
    
    // B-1. 유저의 인터렉션을 presenter에게 전달
    @IBAction private func handlerButton2(_ sender: Any) {
        eventHandler?.handlerButton2()
    }
    
    // C-1. 유저의 인터렉션을 presenter에게 전달
    @IBAction private func handlerButton3(_ sender: Any) {
        eventHandler?.handlerButton3()
    }
    
    // D-1. 유저의 인터렉션을 presenter에게 text와 함께 전달
    @IBAction private func handlerButton4(_ sender: Any) {
        guard let text = textField.text, text != "" else { return }
        eventHandler?.handlerButton4(text)
    }
    
    // E-1. 유저의 인터렉션을 presenter에게 전달
    @IBAction func handlerButton5(_ sender: Any) {
        eventHandler?.handlerButton5()
    }
    
}

// MARK: - HomeViewInterface Implementation
extension HomeMainViewController: HomeViewInterface {
    
    // A-3. UI Update
    func updateTitle(title: String) {
        self.labelTitle.text = title
    }
    
    // B-5. UI Update
    func updateTitleWithRequest(_ responseData: ResponseTitleData) {
        self.labelTitle.text = responseData.title
    }
    
}
