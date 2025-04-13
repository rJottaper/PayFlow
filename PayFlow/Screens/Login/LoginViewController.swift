//
//  LoginViewController.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 31/03/25.
//

import UIKit

class LoginViewController: UIViewController {
  let loginView = LoginView();
  
  var appCoordinator: AppCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad();
    
    appCoordinator = AppCoordinator(navigationController: navigationController!);
    
    configureLoginView();
  };
  
  private func configureLoginView() {
    view.addSubview(loginView);
    
    loginView.translatesAutoresizingMaskIntoConstraints = false;
    loginView.delegate = self;
    
    NSLayoutConstraint.activate([
      loginView.topAnchor.constraint(equalTo: view.topAnchor),
      loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ]);
  };
};

extension LoginViewController: loginViewDelegate {
  func googleButtonTapped() {
    appCoordinator?.loginSuccess();
  };
};
