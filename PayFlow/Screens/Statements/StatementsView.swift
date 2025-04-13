//
//  StatementsView.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 12/04/25.
//

import UIKit

class StatementsView: UIView {
  let payFlowListHeader = PFListHeader(title: "Meus Extratos");
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureLayout();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented");
  };
  
  private func configureLayout() {
    configurePayFlowListHeader();
  };
  
  private func configurePayFlowListHeader() {
    addSubview(payFlowListHeader);
    
    payFlowListHeader.translatesAutoresizingMaskIntoConstraints = false;
    payFlowListHeader.totalText.text = "Nenhum boleto pago";
    
    NSLayoutConstraint.activate([
      payFlowListHeader.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
      payFlowListHeader.leadingAnchor.constraint(equalTo: leadingAnchor),
      payFlowListHeader.trailingAnchor.constraint(equalTo: trailingAnchor),
      payFlowListHeader.heightAnchor.constraint(equalToConstant: 80)
    ]);
  };
}
