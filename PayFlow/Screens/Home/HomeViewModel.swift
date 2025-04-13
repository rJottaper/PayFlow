//
//  HomeViewModel.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 11/04/25.
//

import UIKit

class HomeViewModel {
  func getViewControllers() -> [UIViewController] {
    let billsViewController = BillsViewController();
    let statementsViewController = StatementsViewController();
    
    return [billsViewController, statementsViewController];
  };
};
