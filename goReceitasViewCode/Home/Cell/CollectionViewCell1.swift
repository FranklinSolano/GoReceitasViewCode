//
//  CollectionViewCell1.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
    static let identifier:String = "CollectionViewCell1"
    
    lazy var cellImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "doce")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configSubView()
        
    }
    
    
    func configSubView(){
        contentView.addSubview(cellImageView)
        
        NSLayoutConstraint.activate([
        
            self.cellImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.cellImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.cellImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.cellImageView.heightAnchor.constraint(equalToConstant: 300),
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
