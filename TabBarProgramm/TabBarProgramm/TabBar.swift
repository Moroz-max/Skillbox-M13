//
//  TabBar.swift
//  TabBarProgramm
//
//  Created by Mac on 18.02.2023.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
           UITabBar.appearance().barTintColor = .systemBackground
           tabBar.tintColor = .label
           setupVCs()
        
    }
        
        func setupVCs() {
           
            
                viewControllers = [
                    createNavController(for: ViewController(), title: NSLocalizedString("Поиск", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
                    createNavController(for: SecondViewController(), title: NSLocalizedString("Главная", comment: ""), image: UIImage(systemName: "house")!),
                    createNavController(for: ThirdViewController(), title: NSLocalizedString("Профиль", comment: ""), image: UIImage(systemName: "person")!)
                ]
            }

   
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
          return navController
      }
 
}
