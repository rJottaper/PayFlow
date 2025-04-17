//
//  BillsView.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 12/04/25.
//

import UIKit

class BillsView: UIView {
  let registeredView = UIView();
  let payFlowListHeader = PFListHeader(title: "Meus Boletos");
  let payFlowTableView = PFTableView();
  
  let colors = Colors();
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureLayout();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented");
  };
  
  private func configureLayout() {
    configureRegisteredView();
    configurePayFlowListHeader();
    configurePayFlowTableView();
  };
  
  private func configureRegisteredView() {
    addSubview(registeredView);
    
    registeredView.translatesAutoresizingMaskIntoConstraints = false;
    registeredView.backgroundColor = colors.black;
    registeredView.layer.cornerRadius = 8;
    
    NSLayoutConstraint.activate([
      registeredView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
      registeredView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      registeredView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
      registeredView.heightAnchor.constraint(equalToConstant: 80)
    ]);
    
    let codeBarImage = UIImageView();
    let line = UIView();
    let text = UILabel();
    
    codeBarImage.translatesAutoresizingMaskIntoConstraints = false;
    codeBarImage.image = UIImage(named: "CodeBarWhite");
    codeBarImage.contentMode = .scaleAspectFit;
    
    line.translatesAutoresizingMaskIntoConstraints = false;
    line.backgroundColor = colors.whiteBox;
    
    text.translatesAutoresizingMaskIntoConstraints = false;
    text.text = "Você tem 14 boletos cadastrados para pagar";
    text.textColor = colors.white;
    text.font = UIFont.systemFont(ofSize: 14, weight: .regular);
    text.numberOfLines = 0;
    
    registeredView.addSubview(codeBarImage);
    registeredView.addSubview(line);
    registeredView.addSubview(text);
    
    NSLayoutConstraint.activate([
      codeBarImage.centerYAnchor.constraint(equalTo: registeredView.centerYAnchor),
      codeBarImage.leadingAnchor.constraint(equalTo: registeredView.leadingAnchor, constant: 20),
      codeBarImage.widthAnchor.constraint(equalToConstant: 56),
      codeBarImage.heightAnchor.constraint(equalToConstant: 35)
    ]);
    
    NSLayoutConstraint.activate([
      line.centerYAnchor.constraint(equalTo: registeredView.centerYAnchor),
      line.leadingAnchor.constraint(equalTo: codeBarImage.trailingAnchor, constant: 20),
      line.widthAnchor.constraint(equalToConstant: 1),
      line.heightAnchor.constraint(equalToConstant: 32)
    ]);
    
    NSLayoutConstraint.activate([
      text.centerYAnchor.constraint(equalTo: registeredView.centerYAnchor),
      text.leadingAnchor.constraint(equalTo: line.trailingAnchor, constant: 20),
      text.trailingAnchor.constraint(equalTo: registeredView.trailingAnchor, constant: -20)
    ]);
  };
  
  private func configurePayFlowListHeader() {
    addSubview(payFlowListHeader);
    
    payFlowListHeader.translatesAutoresizingMaskIntoConstraints = false;
    payFlowListHeader.totalText.text = "Nenhum boleto cadastrado"
    
    NSLayoutConstraint.activate([
      payFlowListHeader.topAnchor.constraint(equalTo: registeredView.bottomAnchor, constant: 10),
      payFlowListHeader.leadingAnchor.constraint(equalTo: leadingAnchor),
      payFlowListHeader.trailingAnchor.constraint(equalTo: trailingAnchor),
      payFlowListHeader.heightAnchor.constraint(equalToConstant: 80)
    ]);
  };
  
  private func configurePayFlowTableView() {
    addSubview(payFlowTableView);
    
    payFlowTableView.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint.activate([
      payFlowTableView.topAnchor.constraint(equalTo: payFlowListHeader.bottomAnchor),
      payFlowTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
      payFlowTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
      payFlowTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
    ]);
  };
};
