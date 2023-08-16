//
// Copyright (c) 2023 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import UIKit
import SwiftUI

internal class EntryPointViewController: UIViewController {
    
    lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start flow", for: .normal)
        button.addTarget(self, action: #selector(didTapStartFlow), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
                
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLayoutConstraint.activate([
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            startButton.topAnchor.constraint(equalTo: view.topAnchor),
            startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    @objc private func didTapStartFlow() {
        let hostingController = UIHostingController(rootView: ComponentsView())
        present(hostingController, animated: true)
    }
}
