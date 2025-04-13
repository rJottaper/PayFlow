//
//  BillsViewController.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 11/04/25.
//

import UIKit

class BillsViewController: UIViewController {
  let billsView = BillsView();
  
  override func viewDidLoad() {
    super.viewDidLoad();
    
    configureBillsView();
  };
  
  private func configureBillsView() {
    view.addSubview(billsView);
    
    billsView.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint.activate([
      billsView.topAnchor.constraint(equalTo: view.topAnchor),
      billsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      billsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      billsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ]);
  };
};
