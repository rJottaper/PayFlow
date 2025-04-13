//
//  GoogleButton.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 03/04/25.
//

import UIKit

class GoogleButton: UIButton {
  let colors = Colors();
  let googleImage = UIImageView();
  
  private var originalAlpha = 1.0;
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureButton();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  };
};

extension GoogleButton {
  private func configureButton() {
    configureGoogleButton();
    configureGoogleImage();
  };
  
  private func configureGoogleButton() {
    translatesAutoresizingMaskIntoConstraints = false;
    
    setTitle("Entrar com o Google", for: .normal);
    setTitleColor(colors.black, for: .normal);
    
    titleLabel?.font = UIFont.systemFont(ofSize: 18);
    backgroundColor = colors.whiteBox;
    
    layer.cornerRadius = 8;
    layer.borderWidth = 1;
    layer.borderColor = colors.border.cgColor;
    
    addTarget(self, action: #selector(applyOpacityEffect), for: .touchUpInside);
  };
  
  private func configureGoogleImage() {
    addSubview(googleImage);
    
    googleImage.translatesAutoresizingMaskIntoConstraints = false;
    googleImage.contentMode = .scaleAspectFit;
    googleImage.image = UIImage(named: "GoogleImage");
    
    NSLayoutConstraint.activate([
      googleImage.centerYAnchor.constraint(equalTo: centerYAnchor),
      googleImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
      googleImage.widthAnchor.constraint(equalToConstant: 25),
      googleImage.heightAnchor.constraint(equalToConstant: 25)
    ]);
  };
  
  @objc private func applyOpacityEffect() {
    originalAlpha = self.alpha;
    
    UIView.animate(withDuration: 0.3) {
      self.alpha = 0.5;
    };
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
      UIView.animate(withDuration: 0.3) {
        self.alpha = self.originalAlpha;
      };
    };
  };
};
