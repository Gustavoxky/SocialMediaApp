//
//  CombineCardView.swift
//  SocialMediaApp
//
//  Created by gustavo.correia on 11/07/23.
//

import UIKit

class CombineCardView: UIView {
    
    var user: User? {
        didSet {
            if let user = user {
                fotoImageView.image = UIImage(named: user.foto)
                nameLabel.text = user.name
                idadeLabel.text = String(user.idade)
                fraseLabel.text = user.frase
            }
        }
    }
    
    let fotoImageView: UIImageView = .fotoImageView()
    
    let nameLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let idadeLabel: UILabel = .textLabel(28, textColor: .white)
    let fraseLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    let deslikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")
    
    var callback: ((User) -> Void)?

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 10
        clipsToBounds = true
        
        
        nameLabel.adicionaShadow()
        idadeLabel.adicionaShadow()
        fraseLabel.adicionaShadow()
        
        addSubview(fotoImageView)
        
        addSubview(deslikeImageView)
        deslikeImageView.preencher(top: topAnchor, leading: nil, trailing: trailingAnchor, bottom: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 20))
        
        addSubview(likeImageView)
        likeImageView.preencher(top: topAnchor, leading: leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0))
        
        fotoImageView.preencherSuperview()
        
        let nameIdadeStackView = UIStackView(arrangedSubviews: [nameLabel, idadeLabel, UIView()])
        nameIdadeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nameIdadeStackView, fraseLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencher(top: nil, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor, padding: .init(top: 0, left: 16, bottom: 16, right: 16))
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(viewClick))
        stackView.isUserInteractionEnabled = true
        stackView.addGestureRecognizer(tap)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    @objc func viewClick() {
        if let user = self.user {
            self.callback?(user)
        }
    }
}
