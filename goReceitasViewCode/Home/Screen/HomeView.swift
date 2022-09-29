//
//  HomeView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/12/22.
//

import UIKit

//protocol HomeViewProtocool:AnyObject{
//    
//    func actionPageControl(_ sender:UIPageControl)
//}
//    


class HomeView: UIView {

//    private weak var delagate:HomeViewProtocool?
//    
//    func delegate(delegate:HomeViewProtocool?){
//        self.delagate = delegate
//    }
    
    
    lazy var label:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Olá, Franklin "
        label.textColor = UIColor(red: 149/255, green: 1/255, blue: 239/255, alpha: 1)
        return label
    }()
    
    lazy var imageTop:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "imagePerfil")
        return image
    }()
    
    lazy var categoriasLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Categorias"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)
        collectionView.showsHorizontalScrollIndicator = false
//        collectionView.delaysContentTouches = false
        return collectionView
    }()
    
    
    lazy var experimenteLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Experimente"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var collectionView1:UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(CollectionViewCell1.self, forCellWithReuseIdentifier: CollectionViewCell1.identifier)
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 2
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.layer.cornerRadius = 20
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    lazy var pagControl: UIPageControl = {
        let pc = UIPageControl()
        pc.numberOfPages = 4
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.currentPage = 0
        pc.pageIndicatorTintColor = .white
        pc.currentPageIndicatorTintColor = .purple
        pc.isUserInteractionEnabled = false
//        pc.addTarget(self, action: #selector(self.tappedPageControl), for: .touchUpInside)
        return pc
    }()
    
    
    
    
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)

    }
    private func configSuperView(){
        self.addSubview(self.label)
        self.addSubview(self.imageTop)
        self.addSubview(self.categoriasLabel)
        self.addSubview(self.collectionView)
        self.addSubview(self.experimenteLabel)
        self.addSubview(self.collectionView1)
        self.addSubview(self.pagControl)
//        self.addSubview(self.collectionView1)
    }
    
 
//    @objc private func tappedPageControl(_ sender: UIPageControl){
//
//
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
        
    
            self.label.topAnchor.constraint(equalTo: self.topAnchor,constant: 85),
            self.label.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            self.imageTop.topAnchor.constraint(equalTo: self.topAnchor,constant: 77),
            self.imageTop.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            self.imageTop.widthAnchor.constraint(equalToConstant: 48),
            self.imageTop.heightAnchor.constraint(equalToConstant: 48),
    
            self.categoriasLabel.topAnchor.constraint(equalTo: self.label.bottomAnchor,constant: 45),
            self.categoriasLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            self.collectionView.topAnchor.constraint(equalTo: self.categoriasLabel.bottomAnchor,constant: 20),
            self.collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 70),
            self.collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -70),
            self.collectionView.heightAnchor.constraint(equalToConstant: 70),
            
            self.experimenteLabel.topAnchor.constraint(equalTo: self.collectionView.bottomAnchor,constant: 25),
            self.experimenteLabel.leadingAnchor.constraint(equalTo: self.categoriasLabel.leadingAnchor),
            
            self.collectionView1.topAnchor.constraint(equalTo: self.experimenteLabel.bottomAnchor,constant: 15),
            self.collectionView1.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
            self.collectionView1.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15),
            self.collectionView1.heightAnchor.constraint(equalToConstant: 300),
            self.collectionView1.widthAnchor.constraint(equalToConstant: 300),
            
            
            self.pagControl.topAnchor.constraint(equalTo: self.collectionView1.bottomAnchor,constant: -30),
            self.pagControl.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
            self.pagControl.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15),

//            
            
         
        
        
        ])
    }
}
