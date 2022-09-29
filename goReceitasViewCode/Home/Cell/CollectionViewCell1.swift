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
        image.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)
        image.layer.cornerRadius = 60
        return image
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Torta de Morango"
        label.backgroundColor = UIColor(red:95/255, green: 95/255, blue: 95/255, alpha: 1)
        label.tintColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.contentView.addSubview(self.cellImageView)
        self.contentView.addSubview(self.label)
//        self.backgroundColor = .lightGray
        configSubView()
        
    }
    
    
    func configSubView(){
        contentView.addSubview(cellImageView)
        contentView.addSubview(label)
        NSLayoutConstraint.activate([
        
            self.cellImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.cellImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.cellImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.cellImageView.heightAnchor.constraint(equalToConstant: 365),
            self.cellImageView.widthAnchor.constraint(equalToConstant: 365),
            
            self.label.topAnchor.constraint(equalTo: self.cellImageView.bottomAnchor,constant: -30),
            self.label.leadingAnchor.constraint(equalTo: self.cellImageView.leadingAnchor,constant: 20),
            
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
