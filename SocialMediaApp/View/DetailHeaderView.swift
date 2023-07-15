//
//  DetailHeaderView.swift
//  SocialMediaApp
//
//  Created by gustavo.correia on 14/07/23.
//

import UIKit

class DetailHeaderView: UICollectionReusableView {
    
    var user: User? {
        didSet {
            if let user = user {
                fotoImageView.image = UIImage(named: user.foto)
            }
        }
    }
    
    var fotoImageView: UIImageView = .fotoImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been Implemented")
    }
}
