//
//  DetailFotosCell.swift
//  SocialMediaApp
//
//  Created by gustavo.correia on 15/07/23.
//

import UIKit

class DetailFotosCell: UICollectionViewCell {
    
    let descriptionLabel: UILabel = .textBoldLabel(16)
    
    let slideFotosVC = SlideFotosVC()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        descriptionLabel.text = "Fotos recentes Instagram"
        
        addSubview(descriptionLabel)
        descriptionLabel.preencher(
            top: topAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            bottom: nil,
            padding: .init(top: 0, left: 20, bottom: 0, right: 20))
        
        addSubview(slideFotosVC.view)
        slideFotosVC.view.preencher(
            top: descriptionLabel.bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            bottom: bottomAnchor)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
