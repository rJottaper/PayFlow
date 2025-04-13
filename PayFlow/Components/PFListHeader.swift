//
//  PFListHeader.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 12/04/25.
//

import UIKit

class PFListHeader: UIView {
  let titleText = UILabel();
  let totalText = UILabel();
  let line = UIView();
  
  let colors = Colors();
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureLayout();
  };
  
  init(title: String) {
    super.init(frame: .zero);
    
    titleText.text = title;
    
    configureLayout();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented");
  };
  
  private func configureLayout() {
    cofigureTitleText();
    cofigureTotalText();
    cofigureLine();
  };
  
  private func cofigureTitleText() {
    addSubview(titleText);
    
    titleText.translatesAutoresizingMaskIntoConstraints = false;
    titleText.textColor = colors.black;
    titleText.font = UIFont.systemFont(ofSize: 20, weight: .semibold);
    
    NSLayoutConstraint.activate([
      titleText.centerYAnchor.constraint(equalTo: centerYAnchor),
      titleText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      titleText.trailingAnchor.constraint(equalTo: trailingAnchor),
      titleText.heightAnchor.constraint(equalToConstant: 28)
    ]);
  };
  
  private func cofigureTotalText() {
    addSubview(totalText);
    
    totalText.translatesAutoresizingMaskIntoConstraints = false;
    totalText.textColor = colors.lightBlack;
    totalText.font = UIFont.systemFont(ofSize: 13, weight: .regular);
    
    NSLayoutConstraint.activate([
      totalText.centerYAnchor.constraint(equalTo: centerYAnchor),
      totalText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
      totalText.heightAnchor.constraint(equalToConstant: 20)
    ]);
  };
  
  private func cofigureLine() {
    addSubview(line);
    
    line.translatesAutoresizingMaskIntoConstraints = false;
    line.backgroundColor = colors.lightBlack;
    line.layer.opacity = 0.4;
    
    NSLayoutConstraint.activate([
      line.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 20),
      line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      line.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
      line.heightAnchor.constraint(equalToConstant: 2)
    ]);
  };
};

extension PFListHeader {

};
