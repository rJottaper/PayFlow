//
//  BillsView.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 12/04/25.
//

import UIKit

class BillsView: UIView {
  let payFlowListHeader = PFListHeader(title: "Meus Boletos");
  let payFlowTableView = PFTableView();
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureLayout();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented");
  };
  
  private func configureLayout() {
    configurePayFlowListHeader();
    configurePayFlowTableView();
  };
  
  private func configurePayFlowListHeader() {
    addSubview(payFlowListHeader);
    
    payFlowListHeader.translatesAutoresizingMaskIntoConstraints = false;
    payFlowListHeader.totalText.text = "Nenhum boleto cadastrado"
    
    NSLayoutConstraint.activate([
      payFlowListHeader.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
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
