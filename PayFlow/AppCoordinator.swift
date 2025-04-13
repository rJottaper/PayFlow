//
//  AppCoordinator.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 31/03/25.
//

import UIKit

class AppCoordinator {
  var navigationController: UINavigationController;
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
    navigationController.view.backgroundColor = .white;
  };
  
  func startApp() {
    let loginViewController = LoginViewController();
    navigationController.setViewControllers([loginViewController], animated: false);
  };
  
  func loginSuccess() {
    let homeViewController = HomeViewController();
    navigationController.setViewControllers([homeViewController], animated: false);
  };
};
