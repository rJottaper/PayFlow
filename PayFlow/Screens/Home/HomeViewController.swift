//
//  HomeViewController.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 04/04/25.
//

import UIKit

class HomeViewController: UITabBarController {
  let homeViewModel = HomeViewModel();
  let payFlowHeader = PFHeader();
  let payFlowTabBar = PFTabBar();
  
  override func viewDidLoad() {
    super.viewDidLoad();
    
    configureTabs();
    configurePayFlowHeader();
    configurePayFlowTabBar();
  };
  
  private func configureTabs() {
    viewControllers = homeViewModel.getViewControllers();
  };
  
  private func configurePayFlowHeader() {
    view.addSubview(payFlowHeader);
    
    payFlowHeader.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint.activate([
      payFlowHeader.topAnchor.constraint(equalTo: view.topAnchor),
      payFlowHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      payFlowHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      payFlowHeader.heightAnchor.constraint(equalToConstant: 200)
    ]);
    
    additionalSafeAreaInsets.top = 100;
  };
  
  private func configurePayFlowTabBar() {
    view.addSubview(payFlowTabBar);
    
    payFlowTabBar.translatesAutoresizingMaskIntoConstraints = false;
    
    tabBar.isHidden = true;
    
    NSLayoutConstraint.activate([
      payFlowTabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      payFlowTabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      payFlowTabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
      payFlowTabBar.heightAnchor.constraint(equalToConstant: 80)
    ]);
    
    payFlowTabBar.onTabBarSelected = { [weak self] index in
      self?.selectedIndex = index
    };
  };
};
