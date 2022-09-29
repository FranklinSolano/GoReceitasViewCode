//
//  HomeVc.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/12/22.
//

import UIKit



class HomeVc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
//        cell.backgroundColor = .red
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 30 )
    }
    
 


    

    
    var homeView: HomeView?
    
    override func loadView() {
        self.homeView = HomeView()
        self.view = self.homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        homeView?.collectionView.delegate = self
        homeView?.collectionView.dataSource = self
//
//        homeView?.collectionView1.delegate = self
//        homeView?.collectionView1.dataSource = self
//
        
        
    }
    

    
}
extension HomeView:UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell1.identifier, for: indexPath) as? CollectionViewCell1
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 365, height: 365)
    }
    
    
    
}
//extension HomeView:HomeViewProtocool{
//
//
//    func actionPageControl(_ sender: UIPageControl) {
//        self.collectionView1.scrollToItem(at: IndexPath(row: sender.currentPage, section: 0), at: .centeredHorizontally, animated: true)
//    }
//
//
//
//}


