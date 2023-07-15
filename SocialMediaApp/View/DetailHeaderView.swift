//
//  DetailHeaderView.swift
//  SocialMediaApp
//
//  Created by gustavo.correia on 14/07/23.
//

import UIKit

class DetailHeaderView: UICollectionReusableView {
    var fotoImageView: UIImageView = .fotoImageView(named: "pessoa-1")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been Implemented")
    }
}
