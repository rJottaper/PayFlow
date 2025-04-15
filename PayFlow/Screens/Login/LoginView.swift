//
//  LoginView.swift
//  PayFlow
//
//  Created by João Pedro Rocha on 02/04/25.
//

import UIKit

protocol loginViewDelegate: AnyObject {
  func googleButtonTapped();
};

class LoginView: UIView {
  let orangeView = UIView();
  let loginImage = UIImageView();
  let qrcodeImage = UIImageView();
  let title = UILabel();
  let googleButton = GoogleButton();
  
  let colors = Colors();
  
  weak var delegate: loginViewDelegate?
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
    configureLayout();
  };
  
  override func layoutSubviews() {
    super.layoutSubviews();
    
    configureOrangeView();
  };
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  };
  
  @objc func didGoogleButtonTapped() {
    delegate?.googleButtonTapped();
  };
};

extension LoginView {
  private func configureLayout() {
    configureOrangeView();
    configureLoginImage();
    configureQrcodeImage();
    configureTitle();
    configureGoogleButton();
  };
  
  private func configureOrangeView() {
    addSubview(orangeView);
    
    orangeView.translatesAutoresizingMaskIntoConstraints = false;
    orangeView.backgroundColor = .clear;
    
    let gradient = CAGradientLayer();
    gradient.frame = orangeView.bounds;
    gradient.colors = [
      colors.primaryOrange.cgColor,
      colors.lightOrange.cgColor
    ];
    gradient.locations = [0.7, 1.0];
    gradient.startPoint = CGPoint(x: 0.0, y: 0.0);
    gradient.endPoint = CGPoint(x: 0.0, y: 1.0);
    
    orangeView.layer.insertSublayer(gradient, at: 0);
    
    NSLayoutConstraint.activate([
      orangeView.topAnchor.constraint(equalTo: topAnchor),
      orangeView.leadingAnchor.constraint(equalTo: leadingAnchor),
      orangeView.trailingAnchor.constraint(equalTo: trailingAnchor),
      orangeView.heightAnchor.constraint(equalToConstant: 320)
    ]);
  };
  
  private func configureLoginImage() {
    orangeView.addSubview(loginImage);
    
    loginImage.translatesAutoresizingMaskIntoConstraints = false;
    loginImage.contentMode = .scaleAspectFit;
    loginImage.image = UIImage(named: "LoginImage");
    
    NSLayoutConstraint.activate([
      loginImage.topAnchor.constraint(equalTo: orangeView.topAnchor, constant: 60),
      loginImage.widthAnchor.constraint(equalToConstant: 400),
      loginImage.heightAnchor.constraint(equalToConstant: 400),
      loginImage.centerXAnchor.constraint(equalTo: centerXAnchor)
    ]);
  };
  
  private func configureQrcodeImage() {
    addSubview(qrcodeImage);
    
    qrcodeImage.translatesAutoresizingMaskIntoConstraints = false;
    qrcodeImage.contentMode = .scaleAspectFit;
    qrcodeImage.image = UIImage(named: "QrcodeOrange");
    
    NSLayoutConstraint.activate([
      qrcodeImage.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 20),
      qrcodeImage.widthAnchor.constraint(equalToConstant: 80),
      qrcodeImage.heightAnchor.constraint(equalToConstant: 80),
      qrcodeImage.centerXAnchor.constraint(equalTo: centerXAnchor)
    ]);
  };
  
  private func configureTitle() {
    addSubview(title);
    
    title.translatesAutoresizingMaskIntoConstraints = false;
    title.text = "Organize seus boletos em um só lugar";
    title.textColor = colors.black;
    title.font = UIFont.systemFont(ofSize: 32, weight: .semibold);
    title.textAlignment = .center;
    title.numberOfLines = 0;
    title.alpha = 0;
    
    NSLayoutConstraint.activate([
      title.topAnchor.constraint(equalTo: qrcodeImage.bottomAnchor, constant: 20),
      title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
      title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
    ]);
  };
  
  private func configureGoogleButton() {
    addSubview(googleButton);
    
    googleButton.translatesAutoresizingMaskIntoConstraints = false;
    googleButton.addTarget(self, action: #selector(didGoogleButtonTapped), for: .touchUpInside);
    googleButton.alpha = 0;
    
    NSLayoutConstraint.activate([
      googleButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
      googleButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
      googleButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
      googleButton.heightAnchor.constraint(equalToConstant: 56)
    ]);
  };
};
