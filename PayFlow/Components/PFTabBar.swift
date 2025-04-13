//
//  PFTabBar.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 10/04/25.
//

import UIKit

class PFTabBar: UIView {
  let colors = Colors();
  
  let addButtonView = UIView();
  let addButton = UIButton();
  let billsButton = UIButton();
  let statementsButton = UIButton();
  
  let imageSize = UIImage.SymbolConfiguration(pointSize: 25, weight: .regular);
  
  var onTabBarSelected: ((Int) -> Void)?
  var currentIndex = 0;
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    backgroundColor = colors.whiteBox.withAlphaComponent(0.8);
    
    configureLayout();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  };
  
  private func configureLayout() {
    configureAddButtonView();
    configureAddButton();
    configureBillsButton();
    configureStatementsButton();
    configureIcons(index: 0);
  };
  
  private func configureAddButtonView() {
    addSubview(addButtonView);
    
    addButtonView.translatesAutoresizingMaskIntoConstraints = false;
    addButtonView.layer.cornerRadius = 8;
    addButtonView.backgroundColor = colors.primaryOrange;
    
    NSLayoutConstraint.activate([
      addButtonView.centerXAnchor.constraint(equalTo: centerXAnchor),
      addButtonView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10),
      addButtonView.widthAnchor.constraint(equalToConstant: 56),
      addButtonView.heightAnchor.constraint(equalToConstant: 56)
    ]);
  };
  
  private func configureAddButton() {
    addSubview(addButton);
    
    addButton.translatesAutoresizingMaskIntoConstraints = false;
    addButton.setImage(UIImage(systemName: "plus", withConfiguration: imageSize), for: .normal);
    addButton.tintColor = colors.white;
    
    NSLayoutConstraint.activate([
      addButton.centerXAnchor.constraint(equalTo: addButtonView.centerXAnchor),
      addButton.centerYAnchor.constraint(equalTo: addButtonView.centerYAnchor),
      addButton.widthAnchor.constraint(equalToConstant: 40),
      addButton.heightAnchor.constraint(equalToConstant: 40)
    ]);
  };
  
  private func configureBillsButton() {
    addSubview(billsButton);
    
    billsButton.translatesAutoresizingMaskIntoConstraints = false;
    billsButton.tintColor = colors.primaryOrange;
    billsButton.addTarget(self, action: #selector(billsButtonTapped), for: .touchUpInside);
    
    NSLayoutConstraint.activate([
      billsButton.centerYAnchor.constraint(equalTo: centerYAnchor),
      billsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
      billsButton.trailingAnchor.constraint(equalTo: addButtonView.leadingAnchor, constant: -40),
      billsButton.heightAnchor.constraint(equalToConstant: 40)
    ]);
  };
  
  private func configureStatementsButton() {
    addSubview(statementsButton);
    
    statementsButton.translatesAutoresizingMaskIntoConstraints = false;
    statementsButton.tintColor = colors.primaryOrange;
    statementsButton.addTarget(self, action: #selector(statementsButtonTapped), for: .touchUpInside);
    
    NSLayoutConstraint.activate([
      statementsButton.centerYAnchor.constraint(equalTo: centerYAnchor),
      statementsButton.leadingAnchor.constraint(equalTo: addButtonView.trailingAnchor, constant: 40),
      statementsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
      statementsButton.heightAnchor.constraint(equalToConstant: 40)
    ])
  };
  
  private func configureIcons(index: Int) {
    currentIndex = index;
    
    billsButton.setImage(UIImage(systemName: currentIndex == 0 ? "house.fill" : "house", withConfiguration: imageSize), for: .normal);
    statementsButton.setImage(UIImage(systemName: currentIndex == 1 ? "text.rectangle.page.fill" : "text.rectangle.page", withConfiguration: imageSize), for: .normal);
  };
};

extension PFTabBar {
  @objc private func billsButtonTapped() {
    configureIcons(index: 0);
    onTabBarSelected?(0);
  };
  
  @objc private func statementsButtonTapped() {
    configureIcons(index: 1);
    onTabBarSelected?(1);
  };
};
