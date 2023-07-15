//
//  DetailPerfilCell.swift
//  SocialMediaApp
//
//  Created by gustavo.correia on 15/07/23.
//

import UIKit

class DetailPerfilCell: UICollectionViewCell {
    
    var user: User? {
        didSet{
            if let user = user {
                nameLabel.text = user.name
                idadeLabel.text = String(user.idade)
                fraseLabel.text = user.frase
            }
        }
    }
    
    let nameLabel: UILabel = .textBoldLabel(32)
    let idadeLabel: UILabel = .textLabel(28)
    let fraseLabel: UILabel = .textLabel(18, numberOfLines: 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let nameIdadeStackView = UIStackView(arrangedSubviews: [nameLabel, idadeLabel, UIView()])
        nameIdadeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nameIdadeStackView, fraseLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencherSuperview(padding: .init(
            top: 20,
            left: 20,
            bottom: 20,
            right: 20
        ))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
