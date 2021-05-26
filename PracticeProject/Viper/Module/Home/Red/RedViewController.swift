//
//  RedViewController.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

final class RedViewController: UIViewController, RedViewInterface {
    
    // MARK: - Variables
    weak var eventHandler: RedModuleInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
}
