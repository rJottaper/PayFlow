//
//  PFHeader.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 11/04/25.
//

import UIKit

class PFHeader: UIView {
  let helloText = UILabel();
  let nameText = UILabel();
  let subtitleText = UILabel();
  let userImage = UIImageView();
  
  let colors = Colors();
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureView();
    configureLayout();
  };
  
  override func layoutSubviews() {
    super.layoutSubviews();
    
    configureView();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented");
  };
  
  private func configureView() {
    let gradient = CAGradientLayer();
    gradient.frame = self.bounds;
    gradient.colors = [
      colors.primaryOrange.cgColor,
      colors.lightOrange.cgColor
    ];
    gradient.locations = [0.7, 1.0];
    gradient.startPoint = CGPoint(x: 0.0, y: 0.0);
    gradient.endPoint = CGPoint(x: 0.0, y: 1.0);
    
    self.layer.insertSublayer(gradient, at: 0);
  };
  
  private func configureLayout() {
    configureHelloText();
    configureNameText();
    configureSubtitleText();
    configureUserImage();
  };
  
  private func configureHelloText() {
    addSubview(helloText);
    
    helloText.translatesAutoresizingMaskIntoConstraints = false;
    helloText.text = "Olá,";
    helloText.textColor = colors.white;
    helloText.font = UIFont.systemFont(ofSize: 20, weight: .regular);
    
    NSLayoutConstraint.activate([
      helloText.centerYAnchor.constraint(equalTo: centerYAnchor),
      helloText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      helloText.trailingAnchor.constraint(equalTo: trailingAnchor),
      helloText.heightAnchor.constraint(equalToConstant: 28)
    ]);
  };
  
  private func configureNameText() {
    addSubview(nameText);
    
    nameText.translatesAutoresizingMaskIntoConstraints = false;
    nameText.text = "João";
    nameText.textColor = colors.white;
    nameText.font = UIFont.systemFont(ofSize: 20, weight: .bold);
    
    NSLayoutConstraint.activate([
      nameText.topAnchor.constraint(equalTo: helloText.topAnchor),
      nameText.leadingAnchor.constraint(equalTo: helloText.leadingAnchor, constant: 40),
      nameText.trailingAnchor.constraint(equalTo: trailingAnchor),
      nameText.heightAnchor.constraint(equalToConstant: 28)
    ]);
  };
  
  private func configureSubtitleText() {
    addSubview(subtitleText);
    
    subtitleText.translatesAutoresizingMaskIntoConstraints = false;
    subtitleText.text = "Mantenha suas contas em dia";
    subtitleText.textColor = colors.white;
    subtitleText.font = UIFont.systemFont(ofSize: 18, weight: .regular);
    
    NSLayoutConstraint.activate([
      subtitleText.topAnchor.constraint(equalTo: helloText.bottomAnchor, constant: 10),
      subtitleText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      subtitleText.trailingAnchor.constraint(equalTo: trailingAnchor),
      subtitleText.heightAnchor.constraint(equalToConstant: 22)
    ]);
  };
  
  private func configureUserImage() {
    addSubview(userImage);
    
    userImage.translatesAutoresizingMaskIntoConstraints = false;
    userImage.contentMode = .scaleAspectFit;
    userImage.image = UIImage(named: "ProfileApp");
    userImage.layer.masksToBounds = true;
    userImage.layer.cornerRadius = 8;
    
    NSLayoutConstraint.activate([
      userImage.topAnchor.constraint(equalTo: nameText.topAnchor),
      userImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
      userImage.widthAnchor.constraint(equalToConstant: 65),
      userImage.heightAnchor.constraint(equalToConstant: 65)
    ]);
  };
};
