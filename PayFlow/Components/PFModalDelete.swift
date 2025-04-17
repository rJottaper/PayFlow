//
//  PFModalDeleteViewController.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 14/04/25.
//

import UIKit

class PFModalDelete: UIViewController {
  let titleLabel = UILabel();
  let paidButton = UIButton();
  let unpaidButton = UIButton();
  let line = UIView();
  let deleteButton = UIButton();
  
  let colors = Colors();
  
  override func viewDidLoad() {
    super.viewDidLoad();
    
    view.backgroundColor = colors.white;

    configureLayout();
  };
  
  private func configureLayout() {
    configureTitleLabel();
    configureUnpaidButton();
    configurePaidButton();
    cofigureLine();
    configureDeleteButton();
  };
  
  private func configureTitleLabel() {
    view.addSubview(titleLabel);
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    titleLabel.text = "O boleto Tia Maria no valor de R$ 1.654,00 foi pago?";
    titleLabel.textColor = colors.black;
    titleLabel.textAlignment = .center;
    titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular);
    titleLabel.numberOfLines = 0;
    
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
      titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
    ]);
  };
  
  private func configureUnpaidButton() {
    view.addSubview(unpaidButton);
    
    unpaidButton.translatesAutoresizingMaskIntoConstraints = false;
    unpaidButton.setTitle("Ainda Não", for: .normal);
    unpaidButton.setTitleColor(colors.black, for: .normal);
    unpaidButton.backgroundColor = colors.whiteBox;
    unpaidButton.layer.cornerRadius = 8;
    
    NSLayoutConstraint.activate([
     unpaidButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
     unpaidButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
     unpaidButton.widthAnchor.constraint(equalToConstant: 165),
     unpaidButton.heightAnchor.constraint(equalToConstant: 60)
    ]);
  };
  
  private func configurePaidButton() {
    view.addSubview(paidButton);
    
    paidButton.translatesAutoresizingMaskIntoConstraints = false;
    paidButton.setTitle("Sim", for: .normal);
    paidButton.setTitleColor(colors.white, for: .normal);
    paidButton.backgroundColor = colors.primaryOrange;
    paidButton.layer.cornerRadius = 8;
    
    NSLayoutConstraint.activate([
      paidButton.topAnchor.constraint(equalTo: unpaidButton.topAnchor),
      paidButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
      paidButton.widthAnchor.constraint(equalToConstant: 165),
      paidButton.heightAnchor.constraint(equalToConstant: 60)
    ]);
  };
  
  private func cofigureLine() {
    view.addSubview(line);
    
    line.translatesAutoresizingMaskIntoConstraints = false;
    line.backgroundColor = colors.lightBlack;
    line.layer.opacity = 0.4;
    
    NSLayoutConstraint.activate([
      line.topAnchor.constraint(equalTo: paidButton.bottomAnchor, constant: 25),
      line.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      line.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      line.heightAnchor.constraint(equalToConstant: 2)
    ]);
  };
  
  private func configureDeleteButton() {
    view.addSubview(deleteButton);
    
    deleteButton.translatesAutoresizingMaskIntoConstraints = false;
    deleteButton.setTitle("Deletar Boleto", for: .normal);
    deleteButton.setTitleColor(.red, for: .normal);
    deleteButton.tintColor = .red;
    deleteButton.setImage(UIImage(systemName: "trash"), for: .normal);
    deleteButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20);
    
    NSLayoutConstraint.activate([
      deleteButton.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 15),
      deleteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      deleteButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      deleteButton.heightAnchor.constraint(equalToConstant: 40)
    ]);
  };
}
