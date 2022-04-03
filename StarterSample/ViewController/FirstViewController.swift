//
//  FirstViewController.swift
//  StarterSample
//
//  Created by Osman YILDIRIM on 4.04.2022.
//

import UIKit

class FirstViewController: UIViewController {

    /// Sample button
    let button: UIButton = {
        let _button = UIButton()
        _button.translatesAutoresizingMaskIntoConstraints = false
        _button.setTitle("Button", for: .normal)
        _button.backgroundColor = .lightGray
        return _button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSampleButton()
    }

    @objc private func buttonClick() {
    }

    private func setupSampleButton() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                     button.widthAnchor.constraint(equalToConstant: 70),
                                     button.heightAnchor.constraint(equalToConstant: 70),
            ])

        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
}

