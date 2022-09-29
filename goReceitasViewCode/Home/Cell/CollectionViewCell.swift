//
//  CollectionViewCell.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier:String = "CollectionViewCell"
    
    lazy var cellButton:UIButton = {
        let button = CellButton(placeholder: "Fitness")
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configSubView()
        
    }
    
    
    func configSubView(){
        contentView.addSubview(cellButton)
        
        NSLayoutConstraint.activate([
        
            self.cellButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.cellButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.cellButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.cellButton.heightAnchor.constraint(equalToConstant: 30),
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}





