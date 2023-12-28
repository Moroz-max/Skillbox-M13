//
//  AlertViewController.swift
//  m13
//
//  Created by Mac on 18.02.2023.
//

import UIKit

class AlertViewController: UIViewController {
    
    let alertButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        title = "Последний"
        view.backgroundColor = .black
        
    
        
        alertButton.setTitle("Button", for: .normal)
        alertButton.setTitleColor(.blue, for: .normal)
        alertButton.addAction(
            UIAction(
                handler: { [weak self] _ in
                    let alert = self?.createAlert() ?? UIAlertController()
                    self?.present(
                        alert,
                        animated: true,
                        completion: nil)
        }),
            for: .touchUpInside)
        view.addSubview(alertButton)
    }
    
    private func setupConstraints() {
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func createAlert() -> UIAlertController {
        let alert = UIAlertController(
            title: "Предупреждение!",
            message: "Это последний экран!",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Хорошо", style: .default, handler: nil))
       
        
        return alert
        
    }

}
