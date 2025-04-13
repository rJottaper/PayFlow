//
//  PFTableViewCell.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 12/04/25.
//

import UIKit

class PFTableViewCell: UITableViewCell {
  static let identifier: String = "PFTableViewCell";
  
  let billTitle = UILabel();
  let billSubtitle = UILabel();
  let billValue = UILabel();
  
  let colors = Colors();
    
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier);
    
    configureLayout();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  };
  
  private func configureLayout() {
    configureBillTitle();
    configureBillSubtitle();
    configureBillValue();
  };
  
  private func configureBillTitle() {
    contentView.addSubview(billTitle);
    
    billTitle.translatesAutoresizingMaskIntoConstraints = false;
    billTitle.text = "Boleto Carro";
    billTitle.textColor = colors.black;
    billTitle.font = UIFont.systemFont(ofSize: 17, weight: .semibold);
    
    NSLayoutConstraint.activate([
      billTitle.topAnchor.constraint(equalTo: topAnchor, constant: 25),
      billTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      billTitle.heightAnchor.constraint(equalToConstant: 25)
    ]);
  };
  
  private func configureBillSubtitle() {
    contentView.addSubview(billSubtitle);
    
    billSubtitle.translatesAutoresizingMaskIntoConstraints = false;
    billSubtitle.text = "Vence em 16/03/21";
    billSubtitle.textColor = colors.lightBlack;
    billSubtitle.font = UIFont.systemFont(ofSize: 13, weight: .regular);
    
    NSLayoutConstraint.activate([
      billSubtitle.topAnchor.constraint(equalTo: billTitle.bottomAnchor, constant: 5),
      billSubtitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      billSubtitle.trailingAnchor.constraint(equalTo: trailingAnchor),
      billSubtitle.heightAnchor.constraint(equalToConstant: 21)
    ]);
  };
  
  private func configureBillValue() {
    contentView.addSubview(billValue);
    
    billValue.translatesAutoresizingMaskIntoConstraints = false;
    billValue.text = "R$ 1.654,00";
    billValue.textColor = colors.black;
    billValue.font = UIFont.systemFont(ofSize: 16, weight: .semibold);
    
    NSLayoutConstraint.activate([
      billValue.topAnchor.constraint(equalTo: billTitle.topAnchor),
      billValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
      billValue.heightAnchor.constraint(equalToConstant: 24)
    ]);
  };
};
