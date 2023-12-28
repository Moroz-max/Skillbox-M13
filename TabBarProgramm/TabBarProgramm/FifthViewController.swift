//
//  FithViewController.swift
//  TabBarProgramm
//
//  Created by Mac on 18.02.2023.
//

import UIKit

class FifthViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
        // Do any additional setup after loading the view.
    }
    private func setupViews() {
        title = "5-ый экран"
        view.backgroundColor = .black
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Custom", style: .plain, target: nil, action: nil)
        
        nextButton.setTitle("Button", for: .normal)
        nextButton.setTitleColor(.blue, for: .normal)
        nextButton.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(SixthViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }
    
    private func setupConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}
