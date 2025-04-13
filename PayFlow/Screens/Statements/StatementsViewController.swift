//
//  StatementsViewController.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 11/04/25.
//

import UIKit

class StatementsViewController: UIViewController {
  let statementsView = StatementsView();
  
  override func viewDidLoad() {
    super.viewDidLoad();
    
    configureStatementsView();
  };
  
  private func configureStatementsView() {
    view.addSubview(statementsView);
    
    statementsView.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint.activate([
      statementsView.topAnchor.constraint(equalTo: view.topAnchor),
      statementsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      statementsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      statementsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ]);
  };
};
