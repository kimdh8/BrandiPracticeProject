//
//  BlueViewController.swift
//  PracticeProject
//
//  Created by 김동현 on 2021/03/21.
//

import UIKit

final class BlueViewController: UIViewController {
    
    // MARK: - Variables
    weak var eventHandler: BlueModuleInterface?
    private var labelTitle: String
    
    // MARK: - Outlets
    @IBOutlet private weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        eventHandler?.setLabelText(text: labelTitle)
    }
    
    // MARK: - Functions
    init(title: String) {
        self.labelTitle = title
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - BlueViewInterface Implementation
extension BlueViewController: BlueViewInterface {
    
    func setTitle(text: String) {
        self.labelText.text = text
    }
    
}
