//
//  PFTableView.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 12/04/25.
//

import UIKit

protocol PFTableViewDelegate: AnyObject {
  func didTapCell(at indexPath: IndexPath);
};

class PFTableView: UITableView {
  weak var customDelegate: PFTableViewDelegate?
  
  override init(frame: CGRect, style: UITableView.Style) {
    super.init(frame: frame, style: style);
    
    configurePFTableView();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  };
  
  private func configurePFTableView() {
    translatesAutoresizingMaskIntoConstraints = false;
    separatorStyle = .none;
    delegate = self;
    dataSource = self;
    register(PFTableViewCell.self, forCellReuseIdentifier: PFTableViewCell.identifier);
  
    NSLayoutConstraint.activate([
      topAnchor.constraint(equalTo: topAnchor),
      leadingAnchor.constraint(equalTo: leadingAnchor),
      trailingAnchor.constraint(equalTo: trailingAnchor),
      bottomAnchor.constraint(equalTo: bottomAnchor)
    ]);
  };
};

extension PFTableView: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 6
  };
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: PFTableViewCell.identifier, for: indexPath) as! PFTableViewCell;
    
    return cell;
  };
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  };
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    customDelegate?.didTapCell(at: indexPath);
  };
};
